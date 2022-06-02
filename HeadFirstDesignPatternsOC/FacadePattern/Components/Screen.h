//
//  Screen.h
//  FacadePattern
//
//  Created by 陳峻琦 on 2/6/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Screen : NSObject

- (instancetype)initWithName:(NSString *)name;

- (void)up;
- (void)down;

@end

NS_ASSUME_NONNULL_END
