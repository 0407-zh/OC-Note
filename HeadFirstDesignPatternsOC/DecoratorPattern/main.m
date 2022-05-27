//
//  main.m
//  DecoratorPattern
//
//  Created by 陳峻琦 on 27/5/2022.
//

#import <Foundation/Foundation.h>
#import "Beverage.h"
#import "Espresso.h"
#import "HouseBlend.h"
#import "Mocha.h"
#import "Soy.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Beverage *beverage = [Espresso new];
        NSLog(@"%@ $%.2lf\n", beverage, [beverage cost]);
        
        Beverage *beverage2 = [HouseBlend new];
        beverage2 = [[Mocha alloc] initWithBeverage:beverage2];
        beverage2 = [[Soy alloc] initWithBeverage:beverage2];
        NSLog(@"%@ $%.2lf\n", beverage2, [beverage2 cost]);
    }
    return 0;
}
