//
//  ChocolateBoiler.h
//  SingletonPattern
//
//  Created by 陳峻琦 on 29/5/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChocolateBoiler : NSObject

- (instancetype)init NS_UNAVAILABLE; //只允许调用类的初始化方法
+ (instancetype)getInstance;

- (void)fill;

- (void)drain;

- (void)boil;

@end

NS_ASSUME_NONNULL_END
