//
//  PizzaStore.m
//  FactoryPattern
//
//  Created by 陳峻琦 on 27/5/2022.
//

#import "PizzaStore.h"

@implementation PizzaStore

- (Pizza *)createPizza:(NSString *)type {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)] userInfo:nil];
}

- (Pizza *)orderPizza:(NSString *)type {
    Pizza *pizza;
    
    pizza = [self createPizza:type];
    
    [pizza prepare];
    [pizza bake];
    [pizza cut];
    [pizza box];
    
    return pizza;
}

@end
