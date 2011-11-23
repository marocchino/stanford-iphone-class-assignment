//
//  CalculatorModel.m
//  Calculator
//
//  Created by Taewon Shim on 11/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorModel.h"

@interface CalculatorModel()
@property (nonatomic, strong) NSMutableArray *operandStack;
@end

@implementation CalculatorModel
@synthesize operandStack = _operandStack;

- (NSMutableArray *) operandStack{
    if (!_operandStack) {
        _operandStack = [[NSMutableArray alloc] init];
    }
    return _operandStack;
}

- (void) pushOperand: (double) operand{
    [self.operandStack addObject: [NSNumber numberWithDouble:operand]];
}
- (double) popOperand{
    NSNumber* operandObject = [self.operandStack lastObject];
    if (operandObject) {
        [self.operandStack removeLastObject];
    }
    return [operandObject doubleValue];
}
- (double) performOperation: (NSString *)operation{
    double calculateResult = 0;
    double b  = [self popOperand];
    double a  = [self popOperand];
    if ([operation isEqualToString:@"+"]) {
        calculateResult = a + b;
    } else if ([operation isEqualToString:@"*"]) {
        calculateResult = a * b;
    } else if ([operation isEqualToString:@"-"]) {
        calculateResult = a - b;
    } else if ([operation isEqualToString:@"/"] && b) {
        calculateResult = a / b;
    }
    [self pushOperand:calculateResult];
    return calculateResult;
}

@end    
