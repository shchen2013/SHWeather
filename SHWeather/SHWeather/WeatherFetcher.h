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
 采用苹果自带天气Api,通过地理编码(经纬度)来获取
 @param longitude longitude 东经北纬为正数
 @return
 */
+ (void)FetchWeatherByGeocode:(double)longitude:(double)longitude;
@end
