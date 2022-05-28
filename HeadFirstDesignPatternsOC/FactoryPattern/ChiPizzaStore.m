//
//  ChiPizzaStore.m
//  FactoryPattern
//
//  Created by 陳峻琦 on 28/5/2022.
//

#import "ChiPizzaStore.h"
#import "ChiStyleCheesePizza.h"

@implementation ChiPizzaStore

- (Pizza *)createPizza:(NSString *)type {
    if ([type isEqual:@"Cheese"]) {
        return [ChiStyleCheesePizza new];
    } else {
        return nil;
    }
}

@end
