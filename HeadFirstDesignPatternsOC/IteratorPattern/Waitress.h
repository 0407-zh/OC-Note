//
//  Waitress.h
//  IteratorPattern
//
//  Created by 陳峻琦 on 4/6/2022.
//

#import <Foundation/Foundation.h>
#import "Menu.h"

@interface Waitress : NSObject

@property (nonatomic, strong) id<Menu> pancakeHouseMenu;
@property (nonatomic, strong) id<Menu> dinerMenu;
@property (nonatomic, strong) id<Menu> cafeMenu;

- (void)printMenu;

@end
