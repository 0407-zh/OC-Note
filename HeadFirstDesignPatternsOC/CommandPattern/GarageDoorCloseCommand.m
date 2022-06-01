//
//  GarageDoorCloseCommand.m
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import "GarageDoorCloseCommand.h"

@interface GarageDoorCloseCommand ()

@property (nonatomic)GarageDoor *garageDoor;

@end

@implementation GarageDoorCloseCommand

- (instancetype)initWithDoorCloseCommand:(GarageDoor *)garageDoor {
    if (self = [super init]) {
        self.garageDoor = garageDoor;
    }
    return self;
}

- (void)execute {
    [self.garageDoor open];
}

- (void)undo {
    [self.garageDoor close];
}

@end
