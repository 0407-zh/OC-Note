//
//  Observer.h
//  ObserverPattern
//
//  Created by 陳峻琦 on 26/5/2022.
//

#import <Foundation/Foundation.h>

@protocol Observer <NSObject>

- (void)updateWithTemp: (double)temp humidity: (double)humidity pressure: (double)pressure;

@end
