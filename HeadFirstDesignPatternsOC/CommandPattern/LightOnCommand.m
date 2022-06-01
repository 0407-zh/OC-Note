//
//  LightOnCommand.m
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import "LightOnCommand.h"

@interface LightOnCommand ()

@property (nonatomic)Light* light;

@end

@implementation LightOnCommand

- (instancetype)initWithLightOnCommand:(Light *)light {
    if (self = [super init]) {
        self.light = light;
    }
    return self;
}

- (void)execute {
    [self.light on];
}

- (void)undo {
    [self.light off];
}

@end
