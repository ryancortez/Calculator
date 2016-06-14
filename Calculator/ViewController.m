//
//  ViewController.m
//  Calculator
//
//  Created by Ryan Cortez on 6/14/16.
//  Copyright © 2016 Ryan Cortez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondNumberTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultsLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

-(double)addNumbersWithFirstNumber:(double)firstNumber andSecondNumber: (double) secondNumber {
    double results = 0;
    results = firstNumber + secondNumber;
    return results;
}
-(double)subtractNumbersWithFirstNumber:(double)firstNumber andSecondNumber: (double) secondNumber {
    double results = 0;
    results = firstNumber - secondNumber;
    return results;
}
-(double)multiplyNumbersWithFirstNumber:(double)firstNumber andSecondNumber: (double) secondNumber {
    double results = 0;
    results = firstNumber * secondNumber;
    return results;
}
-(double)divideNumbersWithFirstNumber:(double)firstNumber andSecondNumber: (double) secondNumber {
    double results = 0;
    results = firstNumber / secondNumber;
    return results;
}

- (IBAction)addButton:(id)sender {
    self.resultsLabel.text = [NSString stringWithFormat:@"%f", [self addNumbersWithFirstNumber:self.firstNumberTextField.text.doubleValue andSecondNumber:self.secondNumberTextField.text.doubleValue]];
}
- (IBAction)subtractButton:(id)sender {
    self.resultsLabel.text = [NSString stringWithFormat:@"%f", [self subtractNumbersWithFirstNumber:self.firstNumberTextField.text.doubleValue andSecondNumber:self.secondNumberTextField.text.doubleValue]];
}
- (IBAction)multiplyButton:(id)sender {
    self.resultsLabel.text = [NSString stringWithFormat:@"%f", [self multiplyNumbersWithFirstNumber:self.firstNumberTextField.text.doubleValue andSecondNumber:self.secondNumberTextField.text.doubleValue]];
}
- (IBAction)divideButton:(id)sender {
    self.resultsLabel.text = [NSString stringWithFormat:@"%f", [self divideNumbersWithFirstNumber:self.firstNumberTextField.text.doubleValue andSecondNumber:self.secondNumberTextField.text.doubleValue]];
}

@end
