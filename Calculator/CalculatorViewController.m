//
//  ViewController.m
//  Calculator
//
//  Created by Ryan Cortez on 6/14/16.
//  Copyright © 2016 Ryan Cortez. All rights reserved.
//

#import "CalculatorViewController.h"
#import "Calculator.h"

@interface CalculatorViewController ()
{
    double _result;
    BOOL _operationButtonIsHighlighted;
    BOOL _previousCalculationWasDone;
    Calculator *_calculator;
}

@property (weak, nonatomic) IBOutlet UITextField *firstNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondNumberTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultsLabel;

@end



@implementation CalculatorViewController

-(void) viewDidLoad {
    _calculator = [[Calculator alloc] init];
}


-(void) printResult {
    self.resultsLabel.text = [NSString stringWithFormat:@"%f", _result];
}

- (IBAction)addButton:(id)sender {
    double firstNumber = self.firstNumberTextField.text.doubleValue;
    double secondNumber = self.secondNumberTextField.text.doubleValue;
    _result = [_calculator add:firstNumber secondNumber:secondNumber];
    [self printResult];
}
- (IBAction)subtractButton:(id)sender {
    double firstNumber = self.firstNumberTextField.text.doubleValue;
    double secondNumber = self.secondNumberTextField.text.doubleValue;
    _result = [_calculator subtract:firstNumber secondNumber:secondNumber];
    [self printResult];
}
- (IBAction)multiplyButton:(id)sender {
    double firstNumber = self.firstNumberTextField.text.doubleValue;
    double secondNumber = self.secondNumberTextField.text.doubleValue;
    _result =[_calculator multiply:firstNumber secondNumber:secondNumber];
    [self printResult];
}
- (IBAction)divideButton:(id)sender {
    double firstNumber = self.firstNumberTextField.text.doubleValue;
    double secondNumber = self.secondNumberTextField.text.doubleValue;
    _result = [_calculator divide:firstNumber secondNumber:secondNumber];
    [self printResult];
}



@end
