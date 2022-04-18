//
//  main.m
//  ObjectAndMemory
//
//  Created by 陳峻琦 on 17/4/2022.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSDate *currentTime = nil;//初始化指针变量为nil
        NSDate *currentTime = [NSDate date];//指针变量指向实例
        NSLog(@"currentTime is's value is %p", currentTime);//currentTime指向0x0
        
        NSDate *startTime = currentTime;
        
        sleep(2);//睡眠
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is now %p", currentTime);
        NSLog(@"The address of the original object is %p", startTime);
    }
    return 0;
}
