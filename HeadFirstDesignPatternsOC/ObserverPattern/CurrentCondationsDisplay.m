//
//  CurrentCondationsDisplay.m
//  ObserverPattern
//
//  Created by 陳峻琦 on 26/5/2022.
//

#import "CurrentCondationsDisplay.h"
#import "Subject.h"

@interface CurrentCondationsDisplay ()

@property (nonatomic, assign)float temperature;
@property (nonatomic, assign)float humidity;
@property (nonatomic, strong)id<Subject> weatherData;

@end

@implementation CurrentCondationsDisplay

- (instancetype)initWithWeatherData:(id<Subject>)weatherData {
    if (self = [super init]) {
        _weatherData = weatherData;
        //[weatherData registerObserver:self];
    }
    return self;
}

- (void)updateWithTemp:(double)temp humidity:(double)humidity pressure:(double)pressure {
    self.temperature = temp;
    self.humidity = humidity;
    
    [self display];
}

- (void)display {
    NSLog(@"Current conditions: %.1lfF degrees and %.1lf%% humidity", self.temperature, self.humidity);
}

@end
