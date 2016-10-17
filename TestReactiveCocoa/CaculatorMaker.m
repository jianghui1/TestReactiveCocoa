//
//  CaculatorMaker.m
//  TestReactiveCocoa
//
//  Created by ys on 16/3/28.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import "CaculatorMaker.h"

@implementation CaculatorMaker

- (CaculatorMaker *(^)(int))add
{
    return ^CaculatorMaker *(int value) {
        _result += value;
        return self;
    };
}

- (CaculatorMaker *(^)(int))sub
{
    return ^(int value) {
        _result -= value;
        return self;
    };
}

- (CaculatorMaker *(^)(int))multi
{
    return ^(int value) {
        _result *= value;
        return self;
    };
}

- (CaculatorMaker *(^)(int))divide
{
    return ^CaculatorMaker * (int value) {
        _result /= value;
        return self;
    };
}

- (CaculatorMaker *)caculator:(int (^)(int))caculator
{
    _result = caculator(_result);
    return self;
}

- (CaculatorMaker *)equal:(BOOL (^)(int))operation
{
    _isEqual = operation(_result);
    return self;
}


@end
