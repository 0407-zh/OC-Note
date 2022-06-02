//
//  Projector.m
//  FacadePattern
//
//  Created by 陳峻琦 on 2/6/2022.
//

#import "Projector.h"

@interface Projector ()

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) DvdPlayer *dvdPlayer;

@end

@implementation Projector

- (instancetype)initWithDvdPlayer:(DvdPlayer *)dvdPlayer name:(NSString *)name {
    if (self = [super init]) {
        _dvdPlayer = dvdPlayer;
        _name = name;
    }
    return self;
}

- (void)on {
    NSLog(@"%@ on", self.name);
}

- (void)off {
    NSLog(@"%@ off", self.name);
}

- (void)wideScreenMode {
    NSLog(@"%@ in widescreen mode (16x9 aspect ratio)", self.name);
}

- (void)tvMode {
    NSLog(@"%@ in tv mode (4x3 aspect ratio)", self.name);
}

- (NSString *)description {
    return self.name;
}

@end
