//
//  ModuleManager.h
//  componentDemo
//
//  Created by nihuo on 2018/9/6.
//  Copyright © 2018年 nihuo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ModuleManager : NSObject

+(void)registServiceWithProvide:(id)provide forProtocol:(Protocol *)protocol;

+(id)servideProvideWithProtocol:(Protocol *)protocol;

@end

NS_ASSUME_NONNULL_END
