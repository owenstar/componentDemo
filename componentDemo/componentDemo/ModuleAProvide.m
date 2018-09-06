//
//  ModuleAProvide.m
//  componentDemo
//
//  Created by nihuo on 2018/9/6.
//  Copyright © 2018年 nihuo. All rights reserved.
//

#import "ModuleAProvide.h"
#import "ModuleAVC.h"

@implementation ModuleAProvide

+(void)load
{
    [ModuleManager registServiceWithProvide:[[self alloc]init] forProtocol:@protocol(ModuleAProtocol)];
}

- (nonnull UIViewController *)moduleAViewControllerWithCompletion:(nonnull dispatch_block_t)completion {
    ModuleAVC * vc = [[ModuleAVC alloc]initWithCompletion:completion];
    return vc;
}

- (nonnull UIViewController *)moduleAViewControllerWithText:(nonnull NSString *)text completion:(nonnull dispatch_block_t)completion {
    ModuleAVC * vc = [[ModuleAVC alloc]initWithText:text completion:completion];
    return vc;
}

@end
