//
//  CaculatorHelper.m
//  TestReactiveCocoa
//
//  Created by ys on 16/3/28.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import "CaculatorHelper.h"

@implementation CaculatorHelper

- (CaculatorHelper *(^)(int))add
{
    return ^ (int value) {
        _result += value;
        return self;
    };
}
- (CaculatorHelper *(^)(int))sub
{
    return ^CaculatorHelper *(int value) {
        _result -= value;
        return self;
    };
}
- (CaculatorHelper *(^)(int))multi
{
    return ^CaculatorHelper *(int value) {
        _result *= value;
        return self;
    };
}
- (CaculatorHelper *(^)(int))divide
{
    return ^CaculatorHelper *(int value) {
        _result /= value;
        return self;
    };
}

- (CaculatorHelper *)caculator:(int (^)(int))caculator
{
    _result = caculator(_result);
    return self;
}
- (CaculatorHelper *)operation:(int (^)(int))operation
{
    _isEqual = operation(_result);
    return self;
}

@end
