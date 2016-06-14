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
}
@property (weak, nonatomic) IBOutlet UITextField *firstNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondNumberTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultsLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

-(double)calculateWithANumber:(double) firstNumber aSecondNumber:(double) secondNumber andAnOperation:(char) operation{
    
    switch (operation) {
        case '+':
            result = firstNumber + secondNumber;
            [self printResult];
            break;
        case '-':
            result = firstNumber - secondNumber;
            [self printResult];
            break;
        case '*':
            result = firstNumber * secondNumber;
            [self printResult];
            break;
        case '/':
            result = firstNumber / secondNumber;
            [self printResult];
            break;
        default:
            break;
    }
    
    return result;
}

-(void) printResult {
    self.resultsLabel.text = [NSString stringWithFormat:@"%.02f", result];
}

- (IBAction)addButton:(id)sender {
    [self calculateWithANumber:self.firstNumberTextField.text.doubleValue aSecondNumber:self.secondNumberTextField.text.doubleValue andAnOperation:'+'];
}
- (IBAction)subtractButton:(id)sender {
    [self calculateWithANumber:self.firstNumberTextField.text.doubleValue aSecondNumber:self.secondNumberTextField.text.doubleValue andAnOperation:'-'];}
- (IBAction)multiplyButton:(id)sender {
    [self calculateWithANumber:self.firstNumberTextField.text.doubleValue aSecondNumber:self.secondNumberTextField.text.doubleValue andAnOperation:'*'];}
- (IBAction)divideButton:(id)sender {
   [self calculateWithANumber:self.firstNumberTextField.text.doubleValue aSecondNumber:self.secondNumberTextField.text.doubleValue andAnOperation:'/'];
}

@end
