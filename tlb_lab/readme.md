### 实验说明

包含两个环境

- func环境运行功能测试，测试57条指令，包含89个测试点
- tlb_func环境运行国科大tlb测试，包含10个测试点。默认使用有TLB异常的coe。切换请设置axi_ram ip，重新导入为`soft/tlb_func/obj_no_except`下的`inst_ram.coe`

### soft和trace

根据`files.txt`文件，从soft&trace.zip中复制需要的文件到此目录