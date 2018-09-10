//
//  URLViewController.m
//  componentDemo
//
//  Created by nihuo on 2018/9/10.
//  Copyright © 2018年 nihuo. All rights reserved.
//

#import "URLViewController.h"
#import "MGJRouter/MGJRouter.h"
@interface URLViewController ()

@end

@implementation URLViewController
- (IBAction)click:(id)sender {
    [MGJRouter openURL:@"jy://nav/ModuleC" withUserInfo:@{
                                                           @"name":@"MGJDemo",
                                                           @"image":[UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"aaa" ofType:@"png"]],
                                                           @"navVC":self.navigationController,
                                            
        } completion:^(id result) {
            NSLog(@"加载ModuleVC---success");
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
