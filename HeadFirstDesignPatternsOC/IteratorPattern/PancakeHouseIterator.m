//
//  PancakeHouseIterator.m
//  IteratorPattern
//
//  Created by 陳峻琦 on 4/6/2022.
//

#import "PancakeHouseIterator.h"
#import "LinkedList.h"
#import "MenuItem.h"

@interface PancakeHouseIterator ()

@property (nonatomic, strong) LinkedList *items;
@property (nonatomic, assign) NSInteger position;

@end

@implementation PancakeHouseIterator

- (instancetype)initWithMenuItems:(LinkedList *)menuItems {
    if (self = [super init]) {
        _items = menuItems;
    }
    return self;
}

- (id)next {
    MenuItem *menuItem = [self.items objectAtIndex:self.position];
    self.position++;
    return menuItem;
}

- (BOOL)hasNext {
    if (self.position >= [self.items size]) {
        return NO;
    } else {
        return YES;
    }
}

@end
