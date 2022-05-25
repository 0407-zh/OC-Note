//
//  Duck.m
//  StrategyPattern
//
//  Created by 陳峻琦 on 25/5/2022.
//

#import "Duck.h"

@implementation Duck

- (void)swim {
    NSLog(@"All ducks float, even decoys!");
}

- (void)display {
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
}

- (void)performFly {
    [self.flyBehavior fly];
}

- (void)performQuack {
    [self.quackBehavior quack];
}

@end
