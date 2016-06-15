//
//  Calculator.m
//  Calculator
//
//  Created by Ryan Cortez on 6/15/16.
//  Copyright © 2016 Ryan Cortez. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (double) add:(double) firstNumber secondNumber:(double) secondNumber{
    double result = firstNumber + secondNumber;
    return result;
}
- (double) subtract:(double) firstNumber secondNumber:(double) secondNumber{
    double result = firstNumber - secondNumber;
    return result;
}
- (double) multiply:(double) firstNumber secondNumber:(double) secondNumber{
    double result = firstNumber * secondNumber;
    return result;
}
- (double) divide:(double) firstNumber secondNumber:(double) secondNumber{
    double result = firstNumber / secondNumber;
    return result;
}


@end
