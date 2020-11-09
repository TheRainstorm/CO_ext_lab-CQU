module cpu_axi_interface
(
    input         clk,
    input         resetn, 

    //inst sram-like 
    input         inst_req     ,
    input         inst_wr      ,
    input  [1 :0] inst_size    ,
    input  [31:0] inst_addr    ,
    input  [31:0] inst_wdata   ,
    output [31:0] inst_rdata   ,
    output        inst_addr_ok ,
    output        inst_data_ok ,
    
    //data sram-like 
    input         data_req     ,
    input         data_wr      ,
    input  [1 :0] data_size    ,
    input  [31:0] data_addr    ,
    input  [31:0] data_wdata   ,
    output [31:0] data_rdata   ,
    output        data_addr_ok ,
    output        data_data_ok ,

    //axi
    //ar
    output [3 :0] arid         ,
    output [31:0] araddr       ,
    output [7 :0] arlen        ,
    output [2 :0] arsize       ,
    output [1 :0] arburst      ,
    output [1 :0] arlock        ,
    output [3 :0] arcache      ,
    output [2 :0] arprot       ,
    output        arvalid      ,
    input         arready      ,
    //r           
    input  [3 :0] rid          ,
    input  [31:0] rdata        ,
    input  [1 :0] rresp        ,
    input         rlast        ,
    input         rvalid       ,
    output        rready       ,
    //aw          
    output [3 :0] awid         ,
    output [31:0] awaddr       ,
    output [7 :0] awlen        ,
    output [2 :0] awsize       ,
    output [1 :0] awburst      ,
    output [1 :0] awlock       ,
    output [3 :0] awcache      ,
    output [2 :0] awprot       ,
    output        awvalid      ,
    input         awready      ,
    //w          
    output [3 :0] wid          ,
    output [31:0] wdata        ,
    output [3 :0] wstrb        ,
    output        wlast        ,
    output        wvalid       ,
    input         wready       ,
    //b           
    input  [3 :0] bid          ,
    input  [1 :0] bresp        ,
    input         bvalid       ,
    output        bready       
);

wire rst;
assign rst = ~resetn;

reg arvalid_r;  //检测到取指或读数据时拉高，地址握手成功后拉低
reg read_sel;   //标识取指和读数据 0: inst, 1: data

always @(posedge clk) begin
    arvalid_r <= rst ? 1'b0 :
                 arvalid & arready ? 1'b0 :
                 inst_req | (data_req & ~data_wr) ? 1'b1 : arvalid_r;
    read_sel <= rst ? 1'b0 :
                data_req & ~data_wr ? 1'b1 :
                inst_req ? 1'b0 : read_sel;
end

reg write_req;  //发出写请求整个期间
reg waddr_rcv;  //写地址握手成功后
reg wdata_rcv;  //写数据握手成功后
wire write_finish; //写请求完成

always @(posedge clk) begin
    write_req <= rst                ? 1'b0 :
                 data_req & data_wr ? 1'b1 :
                 write_finish       ? 1'b0 : write_req;
    waddr_rcv <= rst               ? 1'b0 :
                 awvalid & awready ? 1'b1 :
                 write_finish      ? 1'b0 : waddr_rcv;
    wdata_rcv <= rst                     ? 1'b0 :
                 wvalid & wready & wlast ? 1'b1 :
                 write_finish            ? 1'b0 : wdata_rcv;
end

assign write_finish = waddr_rcv & wdata_rcv & (bvalid & bready);

//SRAM-like
assign inst_addr_ok = ~read_sel & arvalid & arready;
assign inst_data_ok = rvalid & (rid==4'd0);
assign inst_rdata   = rdata;

assign data_addr_ok = read_sel & arvalid & arready | data_req & waddr_rcv & wdata_rcv;    //读数据 | 写数据
assign data_data_ok = rvalid & (rid==4'd1) | write_finish;
assign data_rdata   = rdata;

//AXI
//ar
assign arid    = read_sel ? 4'd1 : 4'd0;
assign araddr  = read_sel ? data_addr : inst_addr;
assign arlen   = 8'd0;      //一次事务只进行一次数据传输(no burst)
assign arsize  = read_sel ? data_size : inst_size;
assign arburst = 2'd0;      //默认值
assign arlock  = 2'd0;      //默认值
assign arcache = 4'd0;      //默认值
assign arprot  = 3'd0;      //默认值
assign arvalid = arvalid_r;
//r
assign rready  = 1'b1;      //简化为单向握手

//aw
assign awid    = 4'd0;
assign awaddr  = data_addr;
assign awlen   = 8'd0;
assign awsize  = data_size;
assign awburst = 2'd0;
assign awlock  = 2'd0;
assign awcache = 4'd0;
assign awprot  = 3'd0;
assign awvalid = write_req & ~waddr_rcv;
//w
assign wid    = 4'd0;
assign wdata  = data_wdata;
assign wstrb  = awsize==2'd0 ? 4'b0001<<awaddr[1:0] :           //控制写哪些字节
                awsize==2'd1 ? 4'b0011<<awaddr[1:0] : 4'b1111;
assign wlast  = 1'd1;
assign wvalid = write_req & ~wdata_rcv;
//b
assign bready  = 1'b1;

endmodule

