//
//  WeatherData.m
//  ObserverPattern
//
//  Created by 陳峻琦 on 26/5/2022.
//

#import "WeatherData.h"

@interface WeatherData ()

@property (nonatomic, strong)NSMutableArray<id<Observer>> *observers;
@property (nonatomic, assign)float temperature;
@property (nonatomic, assign)float humidity;
@property (nonatomic, assign)float pressure;

@end

@implementation WeatherData

- (instancetype)init {
    if (self = [super init]) {
        _observers = [NSMutableArray array];
    }
    return self;
}

- (void)registerObserver: (id<Observer>)o {
    [self.observers addObject:o];
}

- (void)removeObserver: (id<Observer>)o {
    [self.observers removeObject:o];
}

- (void)notifyObservers {
    for (id<Observer> observer in self.observers) {
        [observer updateWithTemp:self.temperature humidity:self.humidity pressure:self.pressure];
    }
}

- (float)getTemperature {
    return _temperature;
}

- (float)getHumidity {
    return _humidity;
}

- (float)getPressure {
    return _pressure;
}

- (void)measurementsChanged {
    [self notifyObservers];
}

- (void)setMeasurementsWithTemp:(double)temp humidity:(double)humidity pressure:(double)pressure {
    self.temperature = temp;
    self.humidity = humidity;
    self.pressure = pressure;
    
    [self measurementsChanged];
}

@end
