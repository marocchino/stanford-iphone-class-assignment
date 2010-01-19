//
//  MyController.m
//
//  Created by Shim Taewon on 10/01/19.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyController.h"

@implementation MyController
- (IBAction)decNum:(id)sender {
    number.text = [NSString stringWithFormat:@"%d",number.text.integerValue - 1];
}

- (IBAction)incNum:(id)sender {
    number.text = [NSString stringWithFormat:@"%d",number.text.integerValue + 1];
    
}
@end
