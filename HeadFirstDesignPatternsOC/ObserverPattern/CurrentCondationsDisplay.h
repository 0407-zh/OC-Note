//
//  CurrentCondationsDisplay.h
//  ObserverPattern
//
//  Created by 陳峻琦 on 26/5/2022.
//

#import <Foundation/Foundation.h>
#import "Subject.h"
#import "DisplayElement.h"
#import "Observer.h"

NS_ASSUME_NONNULL_BEGIN

@interface CurrentCondationsDisplay : NSObject<Observer, Display>

- (instancetype)initWithWeatherData: (id<Subject>)weatherData;

@end

NS_ASSUME_NONNULL_END
