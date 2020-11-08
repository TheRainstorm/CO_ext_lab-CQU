#include <machine.h>
#include <time.h>

/* shell1是一个框架函数
在shell1中可以调用你的函数，可以统计你的函数的运行时间
*/
void shell1(void)
{
    unsigned long start_count = 0;
    unsigned long stop_count = 0;
    unsigned long total_count = 0;

    unsigned long start_count_my = 0;
    unsigned long stop_count_my  = 0;
    unsigned long total_count_my = 0;

    printf("shell1 test begin.\n");

    //clear count
    SOC_TIMER = 0;
    asm volatile("mtc0 $0, $9");

    disable_trace_cmp;         //关闭trace比对
    start_count_my  = get_count_my();
    start_count     = get_count();

    //----------------------BEGIN-----------------------//
    //在这里调用你的函数
    matrix_mult();
    //----------------------END-------------------------//

    stop_count_my  = get_count_my();
    stop_count     = get_count();
    
    total_count    = stop_count - start_count;
    total_count_my = stop_count_my - start_count_my;

    SOC_NUM = total_count_my;  
    *((volatile unsigned *)CONFREG_CR0) = total_count_my;  
    *((volatile unsigned *)CONFREG_CR1) = total_count;  
    printf("Total Count(SoC count) = 0x%x\n", total_count);
    printf("Total Count(CPU count) = 0x%x\n", total_count_my);

    return;
}
