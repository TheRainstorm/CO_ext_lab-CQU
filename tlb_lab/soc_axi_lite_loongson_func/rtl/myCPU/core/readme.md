## 说明

mips_core为当前的顶层文件，封装了一个5级流水的MIPS CPU。
实现了100条MIPS r1指令。
对外有两个类sram接口，对应取指和访存。

datapath使用了2020龙芯杯决赛最终提交时的datapath作为新的cpu核。
该版本相对于tag v1.0版本主要更新了：
main_decoder.v: 100条指令（包含TLB指令）
MEM/cp0_reg.v：CP0实现更加规范了
utils/defines.v

bug fixed:
datapath: 当inst_en为0时，原来的i cache模块会返回0值，现在需要在datapath里添加这个逻辑
defines.vh: TLBWR改为000110