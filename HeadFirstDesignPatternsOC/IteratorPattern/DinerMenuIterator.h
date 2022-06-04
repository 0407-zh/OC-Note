//
//  DinerMenuIterator.h
//  IteratorPattern
//
//  Created by 陳峻琦 on 4/6/2022.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

@interface DinerMenuIterator : NSObject <Iterator>

- (instancetype)initWithMenuItems:(NSArray *)items;

@end
