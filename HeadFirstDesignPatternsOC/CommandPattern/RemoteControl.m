//
//  SimpleRemoteControl.m
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import "RemoteControl.h"
#import "NoCommand.h"
#import "Command.h"

@interface RemoteControl ()

@property (nonatomic)id<Command> slot;

@property (nonatomic)NSMutableArray<id<Command>> *onCommands;

@property (nonatomic)NSMutableArray<id<Command>> *offCommands;

@property (nonatomic)id<Command> undoCommand;

@end

@implementation RemoteControl

- (instancetype)init {
    if (self = [super init]) {
        id<Command> noCommand = [NoCommand new];
        self.onCommands = [NSMutableArray arrayWithCapacity:7];
        self.offCommands = [NSMutableArray arrayWithCapacity:7];
        
        for (NSUInteger i = 0; i < 7; i++) {
            self.onCommands[i] = noCommand;
            self.offCommands[i] = noCommand;
        }
        self.undoCommand = noCommand;
    }
    return self;
}

- (void)setCommandAtSlot:(NSUInteger)slot WithOnCommand:(id<Command>)onCommand WithOffCommand:(id<Command>)offCommand {
    self.onCommands[slot] = onCommand;
    self.offCommands[slot] = offCommand;
}

- (void)pushOnButtonAtSlot:(NSInteger)slot {
    [self.onCommands[slot] execute];
    self.undoCommand = self.onCommands[slot];
}

- (void)pushOffButtonAtSlot:(NSInteger)slot {
    [self.offCommands[slot] execute];
    self.undoCommand = self.offCommands[slot];
}

- (void)pushUndoButton {
    [self.undoCommand undo];
}

- (NSString *)description {
    NSMutableString *result = [NSMutableString string];
    [result appendString:@"\n------ Remote Control ------\n"];
    for (NSUInteger i = 0; i < self.onCommands.count; i++) {
        [result appendFormat:@"[slot %lu] %@\t\t%@\n", i, NSStringFromClass([self.onCommands[i] class]), NSStringFromClass([self.offCommands[i] class])];
    }
    return result;
}


@end
