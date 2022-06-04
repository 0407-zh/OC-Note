//
//  DinerMenu.h
//  IteratorPattern
//
//  Created by 陳峻琦 on 4/6/2022.
//

#import <Foundation/Foundation.h>
#import "Menu.h"

@class MenuItem;
@interface DinerMenu : NSObject <Menu>

- (NSArray *)getMenuItems;

@end
