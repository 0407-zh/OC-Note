//
//  ChiStyleCheesePizza.m
//  FactoryPattern
//
//  Created by 陳峻琦 on 28/5/2022.
//

#import "ChiStyleCheesePizza.h"
#import "ThinCrustDough.h"
#import "MarinaraSauce.h"

@implementation ChiStyleCheesePizza

- (instancetype)init {
    if (self = [super init]) {
        self.name = @"Chicago Style Deep Dish Cheese Pizza";
        self.dough = [ThinCrustDough new];
        self.sauce = [MarinaraSauce new];
        
        [self.toppings addObject:@"Shredded Mozzarella Cheese"];
    }
    return self;
}

- (void)bake {
    NSLog(@"Bake for 30 mins at 265");
}

- (void)cut {
    NSLog(@"Cutting the pizza into square slices");
}

@end
