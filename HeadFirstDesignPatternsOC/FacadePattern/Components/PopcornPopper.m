//
//  PopcornPopper.m
//  FacadePattern
//
//  Created by 陳峻琦 on 2/6/2022.
//

#import "PopcornPopper.h"

@interface PopcornPopper ()

@property (nonatomic, strong) NSString *name;

@end

@implementation PopcornPopper

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

- (void)on {
    NSLog(@"Popcorn Popper on");
}

- (void)pop {
    NSLog(@"Popcorn Popper popping popcorn!");
}

- (void)off {
    NSLog(@"Popcorn Popper off");
}

@end
