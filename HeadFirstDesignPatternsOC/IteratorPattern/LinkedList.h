//
//  LinkedList.h
//  IteratorPattern
//
//  Created by 陳峻琦 on 4/6/2022.
//

#import <Foundation/Foundation.h>

@interface LinkedList : NSObject

- (void)addItem:(id)item;
- (id)objectAtIndex:(NSInteger)index;
- (NSUInteger)size;

@end
