//
//  AdditionQuestion.m
//  MathsGame
//
//  Created by Jamie on 2018-07-31.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        NSInteger firstNumber = arc4random_uniform(90) + 10;
        NSInteger secondNumber = arc4random_uniform(90) + 10;
        _question = [NSString stringWithFormat:@"What is the sum of %li and %li?", (long)firstNumber, (long)secondNumber];
        _answer = firstNumber + secondNumber;
    }
    return self;
}

@end
