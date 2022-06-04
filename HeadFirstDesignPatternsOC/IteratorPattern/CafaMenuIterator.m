//
//  CafaMenuIterator.m
//  IteratorPattern
//
//  Created by 陳峻琦 on 4/6/2022.
//

#import "CafaMenuIterator.h"
#import "MenuItem.h"

@interface CafaMenuIterator ()

@property (nonatomic, strong) NSDictionary *items;
@property (nonatomic, assign) NSUInteger position;

@end

@implementation CafaMenuIterator

- (instancetype)initWithMenuItems:(NSDictionary *)menuItems {
    if (self = [super init]) {
        _items = menuItems;
    }
    return self;
}

- (id)next {
    MenuItem *menuItem = [[self.items allValues] objectAtIndex:self.position];
    self.position++;
    return menuItem;
}

- (BOOL)hasNext {
    if (self.position >= [self.items count]) {
        return NO;
    } else {
        return YES;
    }
}

@end
