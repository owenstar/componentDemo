//
//  MGJRouterRegister.m
//  componentDemo
//
//  Created by nihuo on 2018/9/10.
//  Copyright © 2018年 nihuo. All rights reserved.
//

#import "MGJRouterRegister.h"
#import "ModuleCViewController.h"
@implementation MGJRouterRegister
+(void)load
{
    [MGJRouter registerURLPattern:@"jy://nav/ModuleC" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController * nav = routerParameters[MGJRouterParameterUserInfo][@"navVC"];
        ModuleCViewController * vc = [[ModuleCViewController alloc]init];
        vc.name = routerParameters[MGJRouterParameterUserInfo][@"name"];
        vc.image = routerParameters[MGJRouterParameterUserInfo][@"image"];
        [nav pushViewController:vc animated:true];
    }];
}
@end
