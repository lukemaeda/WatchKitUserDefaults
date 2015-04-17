//
//  ViewController.m
//  WatchKitUserDefaults
//
//  Created by MAEDAHAJIME on 2015/04/14.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// 表示フィールド
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

// 入力テキストフィールド
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 何かを入力するようにメッセージ表示
    self.textField.text = @"Type Something...";
    
}

// データの保存
- (IBAction)onSaveTap:(id)sender {
    
    // データの保存　App Groups
    NSUserDefaults *defaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.iScene.UserDefaults"];
    // テキストフィールドの文字をキー：userInput 付きでセットする
    [defaults setObject:self.textField.text forKey:@"userInput"];
    // NSUserDefaultsに即時反映させる（即時で無くてもよい場合は不要）
    [defaults synchronize];
    
    self.textLabel.text = self.textField.text;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
