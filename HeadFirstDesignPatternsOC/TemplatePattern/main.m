//
//  main.m
//  TemplatePattern
//
//  Created by 陳峻琦 on 3/6/2022.
//

#import <Foundation/Foundation.h>
#import "Tea.h"
#import "Coffee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Tea *myTea = [Tea new];
        Coffee *coffee = [Coffee new];
        
        NSLog(@"Making tea...");
        [myTea prepareRecipe];
        
        NSLog(@"Making coffee...");
        [coffee prepareRecipe];
    }
    return 0;
}
