//
//  Waitress.m
//  CompositePattern
//
//  Created by 陳峻琦 on 5/6/2022.
//

#import "Waitress.h"
#import "MenuComponent.h"

@interface Waitress ()

@property (nonatomic, strong) MenuComponent *menus;

@end

@implementation Waitress

- (instancetype)initWithMenus:(MenuComponent *)menus {
    if (self = [super init]) {
        _menus = menus;
    }
    return self;
}

- (void)printMenu {
    [self.menus print];
}

@end
