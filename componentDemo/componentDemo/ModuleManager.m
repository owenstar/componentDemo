//
//  ModuleManager.m
//  componentDemo
//
//  Created by nihuo on 2018/9/6.
//  Copyright © 2018年 nihuo. All rights reserved.
//

#import "ModuleManager.h"
@interface ModuleManager()
@property (nonatomic,strong) NSMutableDictionary *serviceProvideSource;
@end
@implementation ModuleManager

+(ModuleManager *)shareInstance{
    static ModuleManager * instance = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        instance = [[ModuleManager alloc]init];
    });
    return instance;
}

+(void)registServiceWithProvide:(id)provide forProtocol:(Protocol *)protocol
{
    if (provide == nil || protocol == nil) {
        return;
    }
    [[self shareInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}

+(id)servideProvideWithProtocol:(Protocol *)protocol
{
    return [[self shareInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}

-(NSMutableDictionary *)serviceProvideSource
{
    if (!_serviceProvideSource) {
        _serviceProvideSource = [NSMutableDictionary dictionary];
    }
    return  _serviceProvideSource;
}
@end
