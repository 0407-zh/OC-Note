//
//  WeatherData.h
//  ObserverPattern
//
//  Created by 陳峻琦 on 26/5/2022.
//

#import <Foundation/Foundation.h>
#import "Subject.h"

NS_ASSUME_NONNULL_BEGIN

@interface WeatherData : NSObject<Subject>

- (float)getTemperature;

- (float)getHumidity;

- (float)getPressure;

- (void)measurementsChanged;

- (void)setMeasurementsWithTemp:(double)temp humidity:(double)humidity pressure:(double)pressure;

@end

NS_ASSUME_NONNULL_END
