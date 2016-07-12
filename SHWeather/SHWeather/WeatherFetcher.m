//
//  WeatherFetcher.m
//  SHWeather
//
//  Created by Apple on 16/7/10.
//  Copyright © 2016年 Shenzhen iDooFly Technology Co., Ltd. All rights reserved.
//

#import "WeatherFetcher.h"

#define APIKEY  @"70c52c3ab6361bb5aabbc82f67e57891"

@implementation WeatherFetcher
+ (void)FetchDailyWeatherByCityName:(NSString *)cityName finish:(void (^) (NSData *data))finish{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://api.openweathermap.org/data/2.5/forecast?q=%@,us&cnt=8&mode=json&apikey=%@", cityName,APIKEY]];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            NSLog(@"error = %@", error);
            return ;
        }
        if (!data) {
            NSLog(@"no data");
            return;
        }
        finish(data);
    }];
    [task resume];
}

+ (void)FetchForecastWeatherByCityName:(NSString*)cityName finish:(void (^) (NSData *data))finish{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"api.openweathermap.org/data/2.5/forecast/daily?q=%@&mode=json&units=metric&cnt=7&apikey=%@", cityName,APIKEY]];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            NSLog(@"error = %@", error);
            return ;
        }
        if (!data) {
            NSLog(@"no data");
            return;
        }
        finish(data);
    }];
    [task resume];
}

@end
