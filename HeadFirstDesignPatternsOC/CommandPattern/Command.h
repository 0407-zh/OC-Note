//
//  Command.h
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import <Foundation/Foundation.h>

@protocol Command <NSObject>

- (void)execute;

- (void)undo;

@end
