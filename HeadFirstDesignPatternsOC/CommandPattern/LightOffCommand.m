//
//  LightOffCommand.m
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import "LightOffCommand.h"

@interface LightOffCommand ()

@property (nonatomic)Light *light;

@end

@implementation LightOffCommand

- (instancetype)initWithOffCommand:(Light *)light {
    if (self = [super init]) {
        self.light = light;
    }
    return self;
}

- (void)execute {
    [self.light off];
}

- (void)undo {
    [self.light on];
}

@end
