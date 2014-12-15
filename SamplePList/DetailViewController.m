//
//  DetailViewController.m
//  SamplePList
//
//  Created by Eriko Ichinohe on 2014/11/05.
//  Copyright (c) 2014年 Eriko Ichinohe. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"%@",self.friendsList);
    
    NSArray *friendListforTextView = [self.friendsList objectForKey:@"FriendList"];
    
    NSString *strNameList = @"";
    
    //高速列挙でデータを取り出して文字列変数にセット
    for (NSString *friend_name in friendListforTextView) {
        strNameList = [NSString stringWithFormat:@"%@%@",strNameList,friend_name];
    }
    
    self.textViewForFriends.text = strNameList;
    
    NSString *areaName = [self.friendsList objectForKey:@"Name"];
    
    self.areaTitle.text = [NSString stringWithFormat:@"%@のお友達",areaName];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
