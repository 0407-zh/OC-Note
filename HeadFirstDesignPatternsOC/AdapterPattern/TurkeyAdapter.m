//
//  TurkeyAdapter.m
//  AdapterPattern
//
//  Created by 陳峻琦 on 1/6/2022.
//

#import "TurkeyAdapter.h"

@interface TurkeyAdapter ()

@property (nonatomic)id<Turkey> turkey;

@end

@implementation TurkeyAdapter

- (instancetype)initWithTurkeyAdapter:(id<Turkey>)turkey {
    if (self = [super init]) {
        self.turkey = turkey;
    }
    return self;
}

- (void)quack {
    [self.turkey gobble];
}

- (void)fly {
    for (int i = 0; i < 5; i++) {
        [self.turkey fly];
    }
}

@end
