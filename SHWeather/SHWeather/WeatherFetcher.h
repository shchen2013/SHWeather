//
//  WeatherFetcher.h
//  SHWeather
//
//  Created by Apple on 16/7/10.
//  Copyright © 2016年 Shenzhen iDooFly Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherFetcher : NSObject
/**
 采用openweathermap天气Api,通过城市名称来获取,获取从当前时间到未来24小时每隔三小时的天气信息
 @param cityName 城市名称
 @return
 */
+ (void)FetchDailyWeatherByCityName:(NSString *)cityName finish:(void (^) (NSData *data))finish;
/**
 获取未来7天的天气信息
 @param cityName 城市名称
 @return
 */
+ (void)FetchForecastWeatherByCityName:(NSString*)cityName finish:(void (^) (NSData *data))finish;

@end
