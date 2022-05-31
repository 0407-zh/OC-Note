//
//  GarageDoor.h
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GarageDoor : NSObject

- (instancetype)initWithLocation:(NSString *)location;

- (void)open;

- (void)close;

@end

NS_ASSUME_NONNULL_END
