//
//  CTMediator+ModuleA.m
//  componentDemo
//
//  Created by nihuo on 2018/9/10.
//  Copyright © 2018年 nihuo. All rights reserved.
//

#import "CTMediator+ModuleA.h"
@implementation CTMediator (ModuleA)
- (UIViewController *)moduleAVCWithName:(NSString *)name image:(UIImage *)image
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"name"] = name;
    params[@"image"] = image;
    return [self performTarget:@"ModuleA" action:@"ModuleAViewController" params:params shouldCacheTarget:NO];
}
@end
