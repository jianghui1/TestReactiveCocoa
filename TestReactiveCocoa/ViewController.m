//
//  ViewController.m
//  TestReactiveCocoa
//
//  Created by ys on 16/3/28.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import "ViewController.h"

#import "NSObject+Caculator.h"
#import "CaculatorHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 测试blocka
    void (^block1) (int) = ^(int i) {
        NSLog(@"block1");
    };
    block1(1);
    
    int (^block2) (int) = ^int (int i) {
        NSLog(@"block2");
        return 1;
    };
    block2(1);
    
    int (^block3)(int) = ^(int i) {
        NSLog(@"block3");
        return 1;
    };
    block3(1);
    
    // 加法计算器
    // 链式编程
    int result = [NSObject makeCaculators:^(CaculatorMaker *make) {
        make.add(1).add(2).add(3);
    }];
    NSLog(@"%d", result);
    
    
    // 函数编程
    CaculatorMaker *c = [[CaculatorMaker alloc] init];
    BOOL iseuqal = [[[c caculator:^int(int result) {
        result += 2;
        result *= 5;
        return result;
    }] equal:^BOOL(int result) {
        return result == 11;
    }] isEqual];
    NSLog(@"%d", iseuqal);
    
    CaculatorHelper *cp = [[CaculatorHelper alloc] init];
    BOOL equal = [[cp caculator:^int(int result) {
        result += 2;
        result *= 5;
        return result;
    }] operation:^int(int result) {
        return result == 10;
    }];
    NSLog(@"%d", equal);
}


@end
