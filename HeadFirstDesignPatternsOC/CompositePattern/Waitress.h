//
//  Waitress.h
//  CompositePattern
//
//  Created by 陳峻琦 on 5/6/2022.
//

#import <Foundation/Foundation.h>

@class MenuComponent;

NS_ASSUME_NONNULL_BEGIN

@interface Waitress : NSObject

- (instancetype)initWithMenus:(MenuComponent *)menus;
- (void)printMenu;

@end

NS_ASSUME_NONNULL_END
