//
//  ModuleAVC.h
//  componentDemo
//
//  Created by nihuo on 2018/9/6.
//  Copyright © 2018年 nihuo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ModuleAVC : UIViewController

-(instancetype)initWithText:(NSString *)text completion:(dispatch_block_t)completion;

-(instancetype)initWithCompletion:(dispatch_block_t)completion;
@end

NS_ASSUME_NONNULL_END
