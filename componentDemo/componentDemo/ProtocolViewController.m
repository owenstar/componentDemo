//
//  ProtocolViewController.m
//  componentDemo
//
//  Created by nihuo on 2018/9/6.
//  Copyright © 2018年 nihuo. All rights reserved.
//

#import "ProtocolViewController.h"

@interface ProtocolViewController ()

@end

@implementation ProtocolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)pushModuleA:(id)sender {
    id<ModuleAProtocol>moduleAProvide = [ModuleManager servideProvideWithProtocol:@protocol(ModuleAProtocol)];
    UIViewController * moduleAVC = nil;
    UIButton * btn = (UIButton *)sender;
    btn.selected = !btn.selected;
    if (btn.selected) {
        moduleAVC = [moduleAProvide moduleAViewControllerWithText:@"我是带参数的" completion:^{
        
        }];
    }else moduleAVC = [moduleAProvide moduleAViewControllerWithCompletion:^{
        
    }];
    [self.navigationController pushViewController:moduleAVC animated:true];
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
