//
//  CaculatorMaker.h
//  TestReactiveCocoa
//
//  Created by ys on 16/3/28.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaculatorMaker : NSObject

@property (nonatomic, assign) BOOL isEqual;
@property (nonatomic, assign) int result;

// 加法
- (CaculatorMaker *(^)(int))add;
- (CaculatorMaker *(^)(int))sub;
- (CaculatorMaker *(^)(int))multi;
- (CaculatorMaker *(^)(int))divide;

- (CaculatorMaker *)caculator:(int(^)(int result))caculator;

- (CaculatorMaker *)equal:(BOOL (^) (int result))operation;

@end
