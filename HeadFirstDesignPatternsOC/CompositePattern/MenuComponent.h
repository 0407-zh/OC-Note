//
//  MenuComponent.h
//  CompositePattern
//
//  Created by 陳峻琦 on 5/6/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MenuComponent : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *desc;
@property (nonatomic, assign) double price;
@property (nonatomic, assign, getter=isVegetarian) BOOL vegetarian;

- (void)addMenuComponent:(MenuComponent *)menuComponent;
- (void)removeMenuComponent:(MenuComponent *)menuComponent;
- (MenuComponent *)getChildAtIndex:(NSInteger)index;
- (void)print;

@end

NS_ASSUME_NONNULL_END
