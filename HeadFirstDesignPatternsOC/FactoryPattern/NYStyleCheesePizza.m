//
//  NYStyleCheesePizza.m
//  FactoryPattern
//
//  Created by 陳峻琦 on 27/5/2022.
//

#import "NYStyleCheesePizza.h"
#import "ThinCrustDough.h"
#import "MarinaraSauce.h"

@implementation NYStyleCheesePizza

- (instancetype)init {
    if (self = [super init]) {
        self.name = @"NY Style Sauce and Cheese Pizza";
        self.dough = [ThinCrustDough new];
        self.sauce = [MarinaraSauce new];
        
        [self.toppings addObject:@"Grated Reggiano Cheese"];
    }
    return self;
}

@end
