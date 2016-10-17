//
//  NSObject+Caculator.m
//  TestReactiveCocoa
//
//  Created by ys on 16/3/28.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import "NSObject+Caculator.h"

@implementation NSObject (Caculator)

+ (int)makeCaculators:(void (^)(CaculatorMaker *))caculatorMaker
{
    // 1、创建计算管理者
    CaculatorMaker *mgr = [[CaculatorMaker alloc] init];
    caculatorMaker(mgr);
    return mgr.result;
}

- (int)makeCaculators1:(void (^)(CaculatorHelper *))caculatorHelper
{
    CaculatorHelper *chp = [[CaculatorHelper alloc] init];
    caculatorHelper(chp);
    return chp.result;
}

@end
