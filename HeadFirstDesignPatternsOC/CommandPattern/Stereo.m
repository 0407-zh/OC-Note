//
//  Stereo.m
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import "Stereo.h"

@interface Stereo ()

@property (nonatomic)NSString *location;

@end

@implementation Stereo

- (instancetype)initWithLocation:(NSString *)location {
    if (self = [super init]) {
        _location = location;
    }
    return self;
}

- (void)on {
    NSLog(@"%@ Stereo is On", _location);
}

- (void)off {
    NSLog(@"%@ Stereo is off", _location);
}

- (void)setCD {
    
}

- (void)setVolume:(NSInteger)volume {
    
}

@end
