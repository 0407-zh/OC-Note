//
//  Soy.m
//  DecoratorPattern
//
//  Created by 陳峻琦 on 27/5/2022.
//

#import "Soy.h"

@implementation Soy

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, Soy", self.beverage];
}

- (double)cost {
    return 0.99 + [self.beverage cost];
}

@end
