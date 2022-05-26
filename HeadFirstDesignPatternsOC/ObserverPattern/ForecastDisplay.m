//
//  ForecastDisplay.m
//  ObserverPattern
//
//  Created by 陳峻琦 on 26/5/2022.
//

#import "ForecastDisplay.h"

@interface ForecastDisplay ()

@property (nonatomic, assign)double currentPressure;
@property (nonatomic, assign)double lastPressure;
@property (nonatomic, strong)id<Subject> weatherData;

@end

@implementation ForecastDisplay

- (instancetype)initWithWeatherData:(id<Subject>)weatherData {
    if (self = [super init]) {
        _weatherData = weatherData;
        //[weatherData registerObserver:self];
        _currentPressure = 29.2f;
    }
    return self;
}

- (void)updateWithTemp:(double)temp humidity:(double)humidity pressure:(double)pressure {
    self.lastPressure = self.currentPressure;
    
    self.currentPressure = pressure;
    
    [self display];
}

- (void)display {
    NSMutableString *message = [NSMutableString stringWithString:@"Forecast: "];
    if (self.currentPressure > self.lastPressure) {
        [message appendString:@"Improving weather on the way!"];
    } else if (self.currentPressure - self.lastPressure < DBL_EPSILON) {
        [message appendString:@"More of the same"];
    } else if (self.currentPressure < self.lastPressure) {
        [message appendString:@"Watch out for cooler, rainy weather"];
    }
    NSLog(@"%@", message);
}

@end
