//
//  UIAppDelegateExampleAppDelegate.m
//  UIAppDelegateExample
//
//  Created by Shim Taewon on 10/01/25.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "UIAppDelegateExampleAppDelegate.h"

@implementation UIAppDelegateExampleAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application 
{
    // Override point for customization after application launch
    [window makeKeyAndVisible];
	NSLog(@"our app was initialized");
}
- (void)awakeFromNib
{
	slider.value = 50;
	label.text = @"sdadsa";
}

- (IBAction) flashWindow
{
	static int count = 1;
	if (count++ % 2) {
		window.backgroundColor=[UIColor redColor];
	} else {
		window.backgroundColor=[UIColor blueColor];	
	}
}
- (IBAction) printValue:(id)sender
{
	UISlider *slider = (UISlider *) sender;
	label.text = [NSString stringWithFormat:@"%f",slider.value];
}
- (IBAction) printValue:(id)sender withEvent:(UIEvent *)event
{
	label.text = [NSString stringWithFormat:@"sender = %@, event = %@",sender,event ];
	
}

- (void)application:(UIApplication *)application willChangeStatusBarOrientation:(UIInterfaceOrientation)newStatusBarOrientation duration:(NSTimeInterval)duration
{
	NSLog(@"we change status bar orientation to %d",newStatusBarOrientation);
}

- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
