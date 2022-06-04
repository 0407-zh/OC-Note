//
//  CafaMenuIterator.h
//  IteratorPattern
//
//  Created by 陳峻琦 on 4/6/2022.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CafaMenuIterator : NSObject

- (instancetype)initWithMenuItems:(NSDictionary *)menuItems;

@end

NS_ASSUME_NONNULL_END
