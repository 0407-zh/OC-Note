//
//  ForecastDisplay.h
//  ObserverPattern
//
//  Created by 陳峻琦 on 26/5/2022.
//

#import <Foundation/Foundation.h>
#import "Subject.h"
#import "Observer.h"
#import "DisplayElement.h"

NS_ASSUME_NONNULL_BEGIN

@interface ForecastDisplay : NSObject<Observer, Display>

- (instancetype)initWithWeatherData: (id<Subject>)weatherData;

@end

NS_ASSUME_NONNULL_END
