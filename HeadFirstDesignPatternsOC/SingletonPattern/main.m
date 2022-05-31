//
//  main.m
//  SingletonPattern
//
//  Created by 陳峻琦 on 29/5/2022.
//

#import <Foundation/Foundation.h>
#import "ChocolateBoiler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ChocolateBoiler *boiler = [ChocolateBoiler getInstance];
        NSLog(@"%@", boiler);
        [boiler fill];
        [boiler boil];
        [boiler drain];
        
        ChocolateBoiler *boiler2 = [ChocolateBoiler getInstance];
        NSLog(@"%@", boiler2);
    }
    return 0;
}
