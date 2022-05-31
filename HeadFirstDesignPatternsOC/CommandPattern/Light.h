//
//  Light.h
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Light : NSObject

- (instancetype)initWithLocation:(NSString *)location;

- (void)on;

- (void)off;

@end

NS_ASSUME_NONNULL_END
