//
//  ViewController.m
//  5_2_local_notification
//
//  Created by Shinya Hirai on 2015/08/04.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapbtn:(id)sender {
    // 設定する前に、設定済みの通知をキャンセルする
//    [[UIApplication sharedApplication] cancelAllLocalNotifications];
    
    // 通知設定
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    
    // いつ発火させるか
    notification.fireDate = [[NSDate date] dateByAddingTimeInterval:5]; // 今回は5秒
    
    // タイムゾーンの設定
    notification.timeZone = [NSTimeZone defaultTimeZone];
    
    // アラートビューの本文
    notification.alertBody = @"Hello World!!!";
    
    // タップされたときのアクション
    notification.alertAction = @"Open";
    
    // サウンドの種類
    notification.soundName = UILocalNotificationDefaultSoundName;
    
    // 通知登録
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
}





@end
