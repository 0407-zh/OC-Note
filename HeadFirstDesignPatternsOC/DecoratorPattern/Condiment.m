//
//  Condiment.m
//  DecoratorPattern
//
//  Created by 陳峻琦 on 27/5/2022.
//

#import "Condiment.h"

@implementation Condiment

- (instancetype)initWithBeverage:(Beverage *)beverage {
    if (self =[super init]) {
        _beverage = beverage;
    }
    return self;
}

@end
