//
//  CalculatorModel.h
//  Calculator
//
//  Created by Taewon Shim on 11/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorModel : NSObject

- (void) pushOperand: (double) operand;
- (double) performOperation: (NSString *)operaion;
- (void) clearOperand;

@property (readonly) id program;

+ (double) runProgram: (id) program;
+ (NSString *) descriptionOfProgram: (id) program;
+ (double) popOperandOffStack: (NSMutableArray *) stack;

@end
