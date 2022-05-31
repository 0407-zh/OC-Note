//
//  StereoOnWithCDCommand.m
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import "StereoOnWithCDCommand.h"

@interface StereoOnWithCDCommand ()

@property (nonatomic)Stereo *stereo;

@end

@implementation StereoOnWithCDCommand

- (instancetype)initWithStereoOnCommand:(Stereo *)stereo {
    if (self = [super init]) {
        self.stereo = stereo;
    }
    return self;
}

- (void)execute {
    [self.stereo on];
}

- (void)undo {
    
}

@end
