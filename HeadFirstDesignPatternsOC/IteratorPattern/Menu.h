//
//  Menu.h
//  IteratorPattern
//
//  Created by 陳峻琦 on 4/6/2022.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

@protocol Menu <NSObject>

- (id<Iterator>)createIterator;

@end
