//
//  ModuleAVC.m
//  componentDemo
//
//  Created by nihuo on 2018/9/6.
//  Copyright © 2018年 nihuo. All rights reserved.
//

#import "ModuleAVC.h"

@interface ModuleAVC ()
@property (weak, nonatomic) IBOutlet UILabel *textLable;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) dispatch_block_t complete;
@end

@implementation ModuleAVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textLable.text = self.text;
    // Do any additional setup after loading the view from its nib.
}

-(instancetype)initWithCompletion:(dispatch_block_t)completion
{
    ModuleAVC * vc = [[ModuleAVC alloc]init];
    vc.complete = completion;
    return vc;
}

-(instancetype)initWithText:(NSString *)text completion:(dispatch_block_t)completion
{
    ModuleAVC * vc = [[ModuleAVC alloc]init];
    vc.complete = completion;
    vc.text = text;
    return vc;
}

- (IBAction)showModuleBVC:(id)sender {
    id<ModuleBProtocol>moduleProvide = [ModuleManager servideProvideWithProtocol:@protocol(ModuleBProtocol)];
    [self.navigationController pushViewController:[moduleProvide moduleBViewController] animated:true];
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
