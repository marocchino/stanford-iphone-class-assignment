//
//  MyController.m
//
//  Created by Shim Taewon on 10/01/19.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyController.h"

@implementation MyController
- (IBAction)decNum:(id)sender {
	[poly numberOfSides:poly.numberOfSides-1];
    number.text = [NSString stringWithFormat:@"%d",[poly numberOfSides]];
//    number.text = [NSString stringWithFormat:@"%d",number.text.integerValue - 1];
}

- (IBAction)incNum:(id)sender {
	[poly numberOfSides:poly.numberOfSides+1];
    number.text = [NSString stringWithFormat:@"%d",[poly numberOfSides]];
//    number.text = [NSString stringWithFormat:@"%d",number.text.integerValue + 1];
}
@end
