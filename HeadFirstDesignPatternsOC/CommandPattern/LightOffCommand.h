//
//  LightOffCommand.h
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import <Foundation/Foundation.h>
#import "Command.h"
#import "Light.h"

NS_ASSUME_NONNULL_BEGIN

@interface LightOffCommand : NSObject<Command>

- (instancetype)initWithOffCommand: (Light *)light;

@end

NS_ASSUME_NONNULL_END
