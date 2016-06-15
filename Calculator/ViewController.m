//
//  ViewController.m
//  Calculator
//
//  Created by Ryan Cortez on 6/14/16.
//  Copyright © 2016 Ryan Cortez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    double result;
    BOOL operationButtonIsHighlighted;
    BOOL previousCalculationWasDone;
}
@property (weak, nonatomic) IBOutlet UITextField *firstNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondNumberTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultsLabel;

@end

typedef enum{
    Add, Subtract, Multiply, Divide
} Operators;

@implementation ViewController

-(double)calculateWithANumber:(double) firstNumber aSecondNumber:(double) secondNumber andAnOperation:(Operators) operation{
    
    switch (operation) {
        case Add:
            result = firstNumber + secondNumber;
            [self printResult];
            [self resetTextFields];
            break;
        case Subtract:
            result = firstNumber - secondNumber;
            [self printResult];
            [self resetTextFields];
            break;
        case Multiply:
            result = firstNumber * secondNumber;
            [self printResult];
            [self resetTextFields];
            break;
        case Divide:
            result = firstNumber / secondNumber;
            [self printResult];
            [self resetTextFields];
            break;
        default:
            break;
    }
    
    return result;
}

-(void) printResult {
    self.resultsLabel.text = [NSString stringWithFormat:@"%.02f", result];
}

-(void) resetTextFields {
    self.firstNumberTextField.text = @"";
    self.secondNumberTextField.text = @"";
}

- (IBAction)addButton:(id)sender {
    [self calculateWithANumber:self.firstNumberTextField.text.doubleValue aSecondNumber:self.secondNumberTextField.text.doubleValue andAnOperation: Add];
}
- (IBAction)subtractButton:(id)sender {
    [self calculateWithANumber:self.firstNumberTextField.text.doubleValue aSecondNumber:self.secondNumberTextField.text.doubleValue andAnOperation: Subtract];}
- (IBAction)multiplyButton:(id)sender {
    [self calculateWithANumber:self.firstNumberTextField.text.doubleValue aSecondNumber:self.secondNumberTextField.text.doubleValue andAnOperation: Multiply];}
- (IBAction)divideButton:(id)sender {
   [self calculateWithANumber:self.firstNumberTextField.text.doubleValue aSecondNumber:self.secondNumberTextField.text.doubleValue andAnOperation: Divide];
}



@end
