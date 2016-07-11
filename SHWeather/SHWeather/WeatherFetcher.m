//
//  WeatherFetcher.m
//  SHWeather
//
//  Created by Apple on 16/7/10.
//  Copyright © 2016年 Shenzhen iDooFly Technology Co., Ltd. All rights reserved.
//

#import "WeatherFetcher.h"



//70c52c3ab6361bb5aabbc82f67e57891

@implementation WeatherFetcher
+ (void)FetchWeatherByCityName:(NSString *)cityName{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://api.openweathermap.org/data/2.5/forecast?q=%@,us&cnt=8&mode=json&apikey=70c52c3ab6361bb5aabbc82f67e57891", cityName]];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            NSLog(@"error = %@", error);
        }
        if (!data) {
            NSLog(@"data");
            return;
        }
        NSLog(@"%@", [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil]);
    }];
    [task resume];
}

@end
