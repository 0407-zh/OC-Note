//
//  main.m
//  ObserverPattern
//
//  Created by 陳峻琦 on 26/5/2022.
//

#import <Foundation/Foundation.h>
#import "WeatherData.h"
#import "CurrentCondationsDisplay.h"
#import "ForecastDisplay.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        WeatherData *weatherData = [WeatherData new];
        
        CurrentCondationsDisplay *currentDisplay = [[CurrentCondationsDisplay alloc] initWithWeatherData:weatherData];
        ForecastDisplay *forecastDisplay = [[ForecastDisplay alloc]initWithWeatherData:weatherData];
        
        [weatherData registerObserver:currentDisplay];
        [weatherData registerObserver:forecastDisplay];
        [weatherData setMeasurementsWithTemp:80 humidity:65 pressure:30.4f];
        [weatherData setMeasurementsWithTemp:60 humidity:75 pressure:29.5f];
    }
    return 0;
}
