//
//  Pizza.m
//  FactoryPattern
//
//  Created by 陳峻琦 on 27/5/2022.
//

#import "Pizza.h"

@implementation Pizza

- (void)prepare {
//    NSLog(@"Preparing %@\n", self.name);
//    NSLog(@"Tossing dough...\n");
//    NSLog(@"Adding sauce...\n");
//    NSLog(@"Adding toppings");
//    for (int i = 0; [self.toppings count]; i++) {
//        NSLog(@" %@", self.toppings[i]);
//    }
//    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)] userInfo:nil];
}

- (void)bake {
    NSLog(@"Bake for 25 mins at 350");
}

- (void)cut {
    NSLog(@"Cutting the pizza into diagonal slices");
}

- (void)box {
    NSLog(@"Place pizza in official PizzaStore box");
}

@end
