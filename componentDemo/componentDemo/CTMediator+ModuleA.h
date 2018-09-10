//
//  CTMediator+ModuleA.h
//  componentDemo
//
//  Created by nihuo on 2018/9/10.
//  Copyright © 2018年 nihuo. All rights reserved.
//

#import "CTMediator.h"
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (ModuleA)
- (UIViewController *)moduleAVCWithName:(NSString *)name image:(UIImage *)image;
@end

NS_ASSUME_NONNULL_END
