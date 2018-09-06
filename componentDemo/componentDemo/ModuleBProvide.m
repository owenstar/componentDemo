//
//  ModuleBProvide.m
//  componentDemo
//
//  Created by nihuo on 2018/9/6.
//  Copyright © 2018年 nihuo. All rights reserved.
//

#import "ModuleBProvide.h"
#import "ModuleBVC.h"
@implementation ModuleBProvide

+(void)load
{
    [ModuleManager registServiceWithProvide:[[self alloc]init] forProtocol:@protocol(ModuleBProtocol)];
}

-(UIViewController *)moduleBViewController
{
    ModuleBVC * vc = [[ModuleBVC alloc]init];
    return vc;
}

@end
