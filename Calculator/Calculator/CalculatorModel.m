//
//  CalculatorModel.m
//  Calculator
//
//  Created by Taewon Shim on 11/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorModel.h"
#import "math.h"

@interface CalculatorModel()
@property (nonatomic, strong) NSMutableArray *programStack;
@end

@implementation CalculatorModel
@synthesize programStack = _programStack;

- (NSMutableArray *) programStack{
    if (!_programStack) {
        _programStack = [[NSMutableArray alloc] init];
    }
    return _programStack;
}

- (void) clearOperand{
    [self.programStack removeAllObjects];
}

- (void) pushOperand: (double) operand{
    [self.programStack addObject: [NSNumber numberWithDouble:operand]];
}
- (double) popOperand{
    NSNumber* operandObject = [self.programStack lastObject];
    if (operandObject) {
        [self.programStack removeLastObject];
    }
    return [operandObject doubleValue];
}


- (double) performOperation: (NSString *)operation {
    [self.programStack addObject:operation];
    return [CalculatorModel runProgram:self.program];
}

- (id) program
{
    return [self.programStack copy];
}

+ (NSString *) descriptionOfProgram:(id)program
{
    return [program componentsJoinedByString:@" "];
}

+ (double) popOperandOffStack: (NSMutableArray *) stack {
    double result = 0;
    id topOfStack = [stack lastObject];
    if (topOfStack) [stack removeLastObject];
    if ([topOfStack isKindOfClass:[NSNumber class]]) {
        result = [topOfStack doubleValue];
    } else if([topOfStack isKindOfClass:[NSString class]]) {    
        NSString *operation = topOfStack;
        double b  = [self popOperandOffStack:stack];
        double a  = [self popOperandOffStack:stack];
        if ([operation isEqualToString:@"+"]) {
            result = a + b;
        } else if ([operation isEqualToString:@"*"]) {
            if (a) {
                result = a * b;
            } else {
                result = 1 * b;
            }
        } else if ([operation isEqualToString:@"-"]) {
            result = a - b;
        } else if ([operation isEqualToString:@"/"] && b) {
            result = a / b;
        } else if ([operation isEqualToString:@"π"]) {
            if (b) {
                result = M_PI*b;
            } else {
                result = M_PI;
            }
        } else if ([operation isEqualToString:@"sin"]) {
            result = sin(b);
        } else if ([operation isEqualToString:@"cos"]) {
            result = cos(b);
        } else if ([operation isEqualToString:@"sqrt"]) {
            result = sqrt(b);
        }
    }
    return result;
}

+ (double) runProgram:(id)program 
{
    NSMutableArray *stack;
    if ([program isKindOfClass:[NSArray class]]) {
        stack = [program mutableCopy];
    }
    return [self popOperandOffStack:stack];
}


@end    
