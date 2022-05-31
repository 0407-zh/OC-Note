//
//  GarageDoorOpenCommand.h
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import <Foundation/Foundation.h>
#import "Command.h"
#import "GarageDoor.h"

NS_ASSUME_NONNULL_BEGIN

@interface GarageDoorOpenCommand : NSObject<Command>

- (instancetype)initWithDoorOpenCommand: (GarageDoor *) garageDoor;

@end

NS_ASSUME_NONNULL_END
