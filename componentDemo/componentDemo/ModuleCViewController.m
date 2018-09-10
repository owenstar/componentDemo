//
//  ModuleCViewController.m
//  componentDemo
//
//  Created by nihuo on 2018/9/10.
//  Copyright © 2018年 nihuo. All rights reserved.
//

#import "ModuleCViewController.h"

@interface ModuleCViewController ()
@property (weak, nonatomic) IBOutlet UILabel *naleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageview;

@end

@implementation ModuleCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.naleLabel.text = self.name;
    self.imageview.image = self.image;
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
