//
//  MyController.m
//
//  Created by Shim Taewon on 10/01/19.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyController.h"

@implementation MyController
- (void) awakeFromNib {
	[poly setNumberOfSides:[[NSUserDefaults standardUserDefaults] integerForKey:@"numberOfSides"]];
	NSLog(@"%d",[poly numberOfSides]);
	[self apply];
}

- (IBAction)decNum:(id)sender {
	[poly setNumberOfSides:poly.numberOfSides-1];
	[self apply];
	//    number.text = [NSString stringWithFormat:@"%d",number.text.integerValue - 1];
}

- (IBAction)incNum:(id)sender {
	[poly setNumberOfSides:poly.numberOfSides+1];
	[self apply];
	//    number.text = [NSString stringWithFormat:@"%d",number.text.integerValue + 1];
}

- (void)apply
{
    number.text = [NSString stringWithFormat:@"%d",[poly numberOfSides]];
	polygonName.text = [NSString stringWithFormat:@"%@",[poly name]];
	[[NSUserDefaults standardUserDefaults] setInteger:[poly numberOfSides] forKey:@"numberOfSides"];
	
}

- (void)dealloc {
	[number release];
	[poly release];
	[polygonName release];
    [super dealloc];
}


@end
