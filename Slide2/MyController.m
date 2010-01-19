//
//  MyController.m
//
//  Created by Shim Taewon on 10/01/18.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyController.h"

@implementation MyController
-(IBAction)changeLabelText:(id)sender{
	int sliderValue = slider.value;
	label.text = [NSString stringWithFormat:@"%d",sliderValue];
}
@end
