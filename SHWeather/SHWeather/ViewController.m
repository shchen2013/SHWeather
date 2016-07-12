//
//  ViewController.m
//  SHWeather
//
//  Created by Apple on 16/7/7.
//  Copyright © 2016年 Shenzhen iDooFly Technology Co., Ltd. All rights reserved.
//

#import "ViewController.h"
#import "WeatherFetcher.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    __block NSData * data;
    [WeatherFetcher FetchDailyWeatherByCityName:@"ShangHai" finish:^(NSData *data1) {
        data = data1;
        NSLog(@"%@", [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil]);
        //NSLog(@"%@，%@", data, data1);
        //NSLog(@"data = %@", [NSJSONSerialization dataWithJSONObject:data1 options:kNilOptions error:nil]);
    }];

    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
