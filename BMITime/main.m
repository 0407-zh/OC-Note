//
//  main.m
//  YourFirstClass
//
//  Created by 陳峻琦 on 18/4/2022.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRPerson *mikey = [[BNRPerson alloc] init]; //创建实例
        
        [mikey setHeightInMeters: 1.8];
        [mikey setWeightInKilos: 96];
        
        float height = [mikey heightInMeters];
        int weight = [mikey weightInKilos];
        NSLog(@"%.2f, %d", height, weight);
        
        float BMI = [mikey bodyMassIndex];
        NSLog(@"%f", BMI);
    }
    return 0;
}
