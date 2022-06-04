//
//  Waitress.m
//  IteratorPattern
//
//  Created by 陳峻琦 on 4/6/2022.
//

#import "Waitress.h"
#import "Iterator.h"
#import "PancakeHouseMenu.h"
#import "DinerMenu.h"
#import "MenuItem.h"

@implementation Waitress

- (void)printMenu {
    id<Iterator> pancakeIterator = [self.pancakeHouseMenu createIterator];
    id<Iterator> dinerIterator = [self.dinerMenu createIterator];
    id<Iterator> cafeIterator = [self.cafeMenu createIterator];
    NSLog(@"MENU\n----\nBREAKFAST");
    [self printMenu:pancakeIterator];
    NSLog(@"\nLUNCH");
    [self printMenu:dinerIterator];
    NSLog(@"\nDINNER");
    [self printMenu:cafeIterator];
}

- (void)printMenu:(id<Iterator>)iterator {
    while ([iterator hasNext]) {
        MenuItem *menuItem = [iterator next];
        NSLog(@"%@, %.2lf -- %@", menuItem.name, menuItem.price, menuItem);
    }
}

@end
