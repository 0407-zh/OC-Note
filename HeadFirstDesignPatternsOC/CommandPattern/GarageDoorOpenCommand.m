//
//  GarageDoorOpenCommand.m
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import "GarageDoorOpenCommand.h"


@interface GarageDoorOpenCommand ()

@property (nonatomic)GarageDoor *garageDoor;

@end

@implementation GarageDoorOpenCommand

- (instancetype)initWithDoorOpenCommand:(GarageDoor *)garageDoor {
    if (self = [super init]) {
        self.garageDoor = garageDoor;
    }
    return self;
}

//receiver action
- (void)execute {
    [self.garageDoor open];
}

- (void)undo {
    
}

@end
