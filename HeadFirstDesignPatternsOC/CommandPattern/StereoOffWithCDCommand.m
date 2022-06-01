//
//  StereoOffWithCDCommand.m
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import "StereoOffWithCDCommand.h"

@interface StereoOffWithCDCommand ()

@property (nonatomic)Stereo *stereo;

@end

@implementation StereoOffWithCDCommand

- (instancetype)initWithStereoOffCommand:(Stereo *)stereo {
    if (self = [super init]) {
        self.stereo = stereo;
    }
    return self;
}

- (void)execute {
    [self.stereo on];
}

- (void)undo {
    [self.stereo off];
}

@end
