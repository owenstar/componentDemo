//
//  Target_ModuleA.m
//  componentDemo
//
//  Created by nihuo on 2018/9/10.
//  Copyright © 2018年 nihuo. All rights reserved.
//

#import "Target_ModuleA.h"
#import "ModuleAViewController.h"
@implementation Target_ModuleA

-(UIViewController *)Action_ModuleAViewController:(NSMutableDictionary *)params
{
    ModuleAViewController * vc = [[ModuleAViewController alloc]init];
    vc.name = params[@"name"];
    vc.image = params[@"image"];
    return vc;
}

@end

