//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Taewon Shim on 11/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorViewController.h"
#import "CalculatorModel.h"

@interface CalculatorViewController()
@property (nonatomic) BOOL userIsInTheMiddleOfEnteringANumber;
@property (nonatomic, strong) CalculatorModel *model;
@end

@implementation CalculatorViewController

@synthesize userIsInTheMiddleOfEnteringANumber = _userIsInTheMiddleOfEnteringANumber;
@synthesize display = _display;
@synthesize formulaDisplay = _formulaDisplay;
@synthesize model = _model;

- (CalculatorModel *)model {
    if (!_model) {
        _model = [[CalculatorModel alloc] init];
    }
    return _model;
}
- (IBAction)digitPressed:(UIButton *)sender {
    NSString *digit = [sender currentTitle];
    NSString *currentText = [self.display text];
    NSString *newText;
    if (self.userIsInTheMiddleOfEnteringANumber) {
        NSRange range = [currentText rangeOfString:@"."];
        if ([digit isEqualToString:@"."] && range.location != NSNotFound) {
            newText = currentText;
            //do nothing
        } else {
            newText = [currentText stringByAppendingString:digit];
            [self.formulaDisplay setText:[[self.formulaDisplay text] stringByAppendingString:digit]];
        }
    } else {
        newText = digit;
        self.userIsInTheMiddleOfEnteringANumber = YES;
        [self.formulaDisplay setText:[[self.formulaDisplay text] stringByAppendingString:digit]];
    }
    [self.display setText:newText];
}

- (IBAction)clearPressed {
    [self.model clearOperand];
    [self.display setText:@""];
    [self.formulaDisplay setText:@""];
    self.userIsInTheMiddleOfEnteringANumber = NO;
}

- (IBAction)enterPressed {
    [self.model pushOperand:[self.display.text doubleValue]];
    self.userIsInTheMiddleOfEnteringANumber = NO;
    [self.formulaDisplay setText:[[self.formulaDisplay text] stringByAppendingString:@" "]];
}

- (IBAction)operationPressed:(UIButton *)sender {
    if (self.userIsInTheMiddleOfEnteringANumber) [self enterPressed];
    double result = [self.model performOperation:sender.currentTitle];
    NSString *resultString = [NSString stringWithFormat:@"%g", result];
    [self.display setText:resultString];
    [self.formulaDisplay setText:[[self.formulaDisplay text] stringByAppendingFormat:@"%@ ",sender.currentTitle]];
}

- (void)viewDidUnload {
    [self setFormulaDisplay:nil];
    [super viewDidUnload];
}
@end
