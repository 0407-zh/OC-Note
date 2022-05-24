//
//  main.c
//  Pointer
//
//  Created by 陳峻琦 on 24/5/2022.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inPtr) {
    double rawFeet = meters * 3.281;
    double integerPart;
    //计算英尺
    //unsigned int feet = (unsigned int)floor(rawFeet);
    modf(rawFeet, &integerPart);
    unsigned int feet = (unsigned int)integerPart;
    
    //将feet变量的值保存在传入的地址上
    if (ftPtr) {
        printf("Storing %u to the address %p\n", feet, ftPtr);
        *ftPtr = feet;
    }
    
    //计算英寸
    double fractionalFoot = rawFeet - feet;
    double inches = fractionalFoot * 12.0;
    
    if (inPtr) {
        printf("Storing %.2f to the address %p\n", inches, inPtr);
        *inPtr = inches;
    }
}

int main(int argc, const char * argv[]) {
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    printf("%.lf meters is equal to %d feet and %.lf inches.\n", meters, feet, inches);
    return 0;
}
