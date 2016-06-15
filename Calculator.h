//
//  Calculator.h
//  Calculator
//
//  Created by Ryan Cortez on 6/15/16.
//  Copyright © 2016 Ryan Cortez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

- (double) add:(double) firstNumber secondNumber:(double) secondNumber;
- (double) subtract:(double) firstNumber secondNumber:(double) secondNumber;
- (double) multiply:(double) firstNumber secondNumber:(double) secondNumber;
- (double) divide:(double) firstNumber secondNumber:(double) secondNumber;

@end
