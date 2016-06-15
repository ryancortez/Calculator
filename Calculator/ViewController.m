//
//  ViewController.m
//  Calculator
//
//  Created by Ryan Cortez on 6/14/16.
//  Copyright © 2016 Ryan Cortez. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()
{
    double result;
    BOOL operationButtonIsHighlighted;
    BOOL previousCalculationWasDone;
}

@property (weak, nonatomic) IBOutlet UITextField *firstNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondNumberTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultsLabel;
@property (strong, nonatomic) Calculator *calculator;

@end



@implementation ViewController

-(void) viewDidLoad {
    self.calculator = [[Calculator alloc] init];
}


-(void) printResult {
    self.resultsLabel.text = [NSString stringWithFormat:@"%.02f", result];
}


- (IBAction)addButton:(id)sender {
    double firstNumber = self.firstNumberTextField.text.doubleValue;
    double secondNumber = self.secondNumberTextField.text.doubleValue;
    result = [self.calculator add:firstNumber secondNumber:secondNumber];
    [self printResult];
}
- (IBAction)subtractButton:(id)sender {
    double firstNumber = self.firstNumberTextField.text.doubleValue;
    double secondNumber = self.secondNumberTextField.text.doubleValue;
    result = [self.calculator subtract:firstNumber secondNumber:secondNumber];
    [self printResult];
}
- (IBAction)multiplyButton:(id)sender {
    double firstNumber = self.firstNumberTextField.text.doubleValue;
    double secondNumber = self.secondNumberTextField.text.doubleValue;
    result =[self.calculator multiply:firstNumber secondNumber:secondNumber];
    [self printResult];
}
- (IBAction)divideButton:(id)sender {
    double firstNumber = self.firstNumberTextField.text.doubleValue;
    double secondNumber = self.secondNumberTextField.text.doubleValue;
    result = [self.calculator divide:firstNumber secondNumber:secondNumber];
    [self printResult];
}



@end
