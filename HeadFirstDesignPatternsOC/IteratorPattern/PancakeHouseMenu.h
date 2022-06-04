//
//  PancakeHouseMenu.h
//  IteratorPattern
//
//  Created by 陳峻琦 on 4/6/2022.
//

#import <Foundation/Foundation.h>
#import "Menu.h"

@class LinkedList;

@interface PancakeHouseMenu : NSObject <Menu>

- (LinkedList *)getMenuItems;

@end
