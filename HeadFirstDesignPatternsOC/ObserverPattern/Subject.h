//
//  Subject.h
//  ObserverPattern
//
//  Created by 陳峻琦 on 26/5/2022.
//

#import <Foundation/Foundation.h>
#import "Observer.h"

@protocol Subject <NSObject>

- (void)registerObserver: (id<Observer>)o;

- (void)removeObserver: (id<Observer>)o;

- (void)notifyObservers;

@end
