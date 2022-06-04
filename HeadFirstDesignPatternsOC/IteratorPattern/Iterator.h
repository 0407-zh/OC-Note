//
//  Iterator.h
//  IteratorPattern
//
//  Created by 陳峻琦 on 4/6/2022.
//

#import <Foundation/Foundation.h>

@protocol Iterator <NSObject>

- (BOOL)hasNext;
- (id)next;

@end
