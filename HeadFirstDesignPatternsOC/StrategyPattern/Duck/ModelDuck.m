//
//  ModelDuck.m
//  StrategyPattern
//
//  Created by 陳峻琦 on 25/5/2022.
//

#import "ModelDuck.h"
#import "FlyNoWay.h"
#import "Quack.h"

@implementation ModelDuck

- (instancetype)init {
    if (self = [super init]) {
        self.flyBehavior = [FlyNoWay new];
        self.quackBehavior = [Quack new];
    }
    return self;
}

- (void)display {
    NSLog(@"I'm a model duck");
}

@end
