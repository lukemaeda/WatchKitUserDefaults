//
//  InterfaceController.m
//  WatchKitUserDefaults WatchKit Extension
//
//  Created by MAEDAHAJIME on 2015/04/14.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *textLabel;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)showUpdate {
    
    // データの読み込み
    // NSUserDefaultsを作成　オブジェクトへのアクセスを共有
    NSUserDefaults *defaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.iScene.UserDefaults"];
    // テキストラベルに表示
    self.textLabel.text = [defaults stringForKey:@"userInput"];
}
@end



