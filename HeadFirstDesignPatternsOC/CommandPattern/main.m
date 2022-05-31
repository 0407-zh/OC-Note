//
//  main.m
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import <Foundation/Foundation.h>
#import "RemoteControl.h"
#import "Light.h"
#import "LightOnCommand.h"
#import "LightOffCommand.h"
#import "GarageDoor.h"
#import "GarageDoorOpenCommand.h"
#import "GarageDoorCloseCommand.h"
#import "Stereo.h"
#import "StereoOnWithCDCommand.h"
#import "StereoOffWithCDCommand.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        RemoteControl *remote = [RemoteControl new];
        
        Light *livingRoomLight = [[Light alloc] initWithLocation:@"LivingRoom"];
        Light *kitchenLight = [[Light alloc] initWithLocation:@"Kitchen"];
        GarageDoor *garage = [[GarageDoor alloc] initWithLocation:@"Garage"];
        Stereo *stereo = [[Stereo alloc] initWithLocation:@"LivingRoom"];
        
        LightOnCommand *livingRoomLightOn = [[LightOnCommand alloc] initWithLightOnCommand:livingRoomLight];
        LightOffCommand *livingRoomLightOff = [[LightOffCommand alloc] initWithOffCommand:livingRoomLight];
        LightOnCommand *kitchenLightOn = [[LightOnCommand alloc] initWithLightOnCommand:kitchenLight];
        LightOffCommand *kitchenLightOff = [[LightOffCommand alloc] initWithOffCommand:kitchenLight];
        
        GarageDoorOpenCommand *garageDoorOpen = [[GarageDoorOpenCommand alloc] initWithDoorOpenCommand:garage];
        GarageDoorCloseCommand *garageDoorClose = [[GarageDoorCloseCommand alloc] initWithDoorCloseCommand:garage];
        
        StereoOnWithCDCommand *stereoOnWithCD = [[StereoOnWithCDCommand alloc] initWithStereoOnCommand:stereo];
        StereoOffWithCDCommand *stereoOffWithCD = [[StereoOffWithCDCommand alloc] initWithStereoOffCommand:stereo];
        
        [remote setCommandAtSlot:0 WithOnCommand:livingRoomLightOn WithOffCommand:livingRoomLightOff];
        [remote setCommandAtSlot:1 WithOnCommand:kitchenLightOn WithOffCommand:kitchenLightOff];
        [remote setCommandAtSlot:2 WithOnCommand:garageDoorOpen WithOffCommand: garageDoorClose];
        [remote setCommandAtSlot:3 WithOnCommand:stereoOnWithCD WithOffCommand:stereoOffWithCD];
        
        NSLog(@"%@", remote);
        
        [remote pushOnButtonAtSlot:0];
        [remote pushOffButtonAtSlot:0];
        [remote pushOnButtonAtSlot:1];
        [remote pushOffButtonAtSlot:1];
        [remote pushOnButtonAtSlot:2];
        [remote pushOffButtonAtSlot:2];
        [remote pushOnButtonAtSlot:3];
        [remote pushOffButtonAtSlot:3];
    }
    return 0;
}
