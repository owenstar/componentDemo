//
//  ModuleBProtocol.h
//  componentDemo
//
//  Created by nihuo on 2018/9/6.
//  Copyright © 2018年 nihuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ModuleBProtocol <NSObject>

@required

-(UIViewController *)moduleBViewController;

@end

NS_ASSUME_NONNULL_END
