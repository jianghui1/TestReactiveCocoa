//
//  CaculatorHelper.h
//  TestReactiveCocoa
//
//  Created by ys on 16/3/28.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaculatorHelper : NSObject

@property (nonatomic, assign) BOOL isEqual;
@property (nonatomic, assign) int result;

- (CaculatorHelper * (^) (int))add;
- (CaculatorHelper * (^) (int))sub;
- (CaculatorHelper * (^) (int))multi;
- (CaculatorHelper * (^) (int))divide;

- (CaculatorHelper *)caculator:(int (^) (int result))caculator;
- (CaculatorHelper *)operation:(int (^) (int result))operation;

@end
