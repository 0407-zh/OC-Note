//
//  CaffeineBeverage.m
//  TemplatePattern
//
//  Created by 陳峻琦 on 3/6/2022.
//

#import "CaffeineBeverage.h"

@implementation CaffeineBeverage

- (void)prepareRecipe {
    [self boilWater];
    [self brew];
    [self pourInCup];
    if (self.customerWantsCondiments) {
        [self addCondiments];
    }
}

- (void)brew {
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
}

- (void)addCondiments {
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
}

- (void)boilWater {
    NSLog(@"Boiling water");
}

- (void)pourInCup {
    NSLog(@"Pouring into cup");
}

- (BOOL)customerWantsCondiments {
    return true;
}

@end
