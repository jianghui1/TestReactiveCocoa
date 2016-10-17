//
//  NSObject+Caculator.h
//  TestReactiveCocoa
//
//  Created by ys on 16/3/28.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CaculatorMaker.h"
#import "CaculatorHelper.h"

@interface NSObject (Caculator)

// 计算
+ (int)makeCaculators:(void(^)(CaculatorMaker *make))caculatorMaker;

- (int)makeCaculators1:(void(^)(CaculatorHelper *make))caculatorHelper;

@end
