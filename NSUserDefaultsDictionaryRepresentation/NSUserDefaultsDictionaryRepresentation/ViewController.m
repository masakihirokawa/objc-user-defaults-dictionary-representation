//
//  ViewController.m
//  NSUserDefaultsDictionaryRepresentation
//
//  Created by Dolice on 2013/04/25.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //ユーザーデフォルトを取得する
  NSUserDefaults *userDefaults;
  userDefaults = [NSUserDefaults standardUserDefaults];
  
  //設定値を保存する
  [userDefaults setInteger:6
                    forKey:@"myValue"];
  
  //全設定値を取得する
  NSDictionary *dictionary = [userDefaults dictionaryRepresentation];
  
  //ファイルに書き込む
  NSString *path = @"~/Documents/setting.plist";
  path = [path stringByExpandingTildeInPath];
  
  [dictionary writeToFile:path
               atomically:YES];
}

@end
