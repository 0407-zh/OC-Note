//
//  MenuItem.h
//  IteratorPattern
//
//  Created by 陳峻琦 on 4/6/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MenuItem : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *introduction;
@property (nonatomic, assign, getter=isVegetarian) BOOL vegetarian;
@property (nonatomic, assign) double price;

@end

NS_ASSUME_NONNULL_END
