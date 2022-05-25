//
//  MallardDuck.m
//  StrategyPattern
//
//  Created by 陳峻琦 on 25/5/2022.
//

#import "MallardDuck.h"
#import "FlyWithWings.h"
#import "Quack.h"

@implementation MallardDuck

- (instancetype)init {
    if (self = [super init]) {
        self.flyBehavior = [FlyWithWings new];
        self.quackBehavior = [Quack new];
    }
    return self;
}

- (void)display {
    NSLog(@"I'm a real Mallaard duck");
}

@end
