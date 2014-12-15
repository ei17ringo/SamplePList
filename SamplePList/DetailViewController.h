//
//  DetailViewController.h
//  SamplePList
//
//  Created by Eriko Ichinohe on 2014/11/05.
//  Copyright (c) 2014年 Eriko Ichinohe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (nonatomic,strong) NSDictionary *friendsList;
@property (weak, nonatomic) IBOutlet UITextView *textViewForFriends;
@property (weak, nonatomic) IBOutlet UILabel *areaTitle;

@end
