//
//  PancakeHouseIterator.h
//  IteratorPattern
//
//  Created by 陳峻琦 on 4/6/2022.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

@class LinkedList;
@interface PancakeHouseIterator : NSObject <Iterator>

- (instancetype)initWithMenuItems:(LinkedList *)menuItems;

@end
