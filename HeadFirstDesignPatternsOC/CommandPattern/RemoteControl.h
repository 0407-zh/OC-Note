//
//  SimpleRemoteControl.h
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import <Foundation/Foundation.h>
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface RemoteControl : NSObject

- (void)setCommandAtSlot: (NSUInteger)slot WithOnCommand: (id<Command>)onCommand WithOffCommand: (id<Command>)offCommand;

- (void)pushOnButtonAtSlot:(NSInteger)slot;

- (void)pushOffButtonAtSlot:(NSInteger)slot;

- (void)pushUndoButton;

@end

NS_ASSUME_NONNULL_END
