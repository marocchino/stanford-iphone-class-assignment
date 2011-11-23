//
//  RetainCountTestAppDelegate.m
//  RetainCountTest
//
//  Created by Shim Taewon on 10/01/24.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "RetainCountTestAppDelegate.h"

@implementation RetainCountTestAppDelegate

@synthesize window;

- (IBAction) runMyTest
{
	NSString *thisString = [NSMutableString stringWithString:@"hello"];
	NSLog(@"this string retain count is %d",[thisString retainCount]);
	[thisString retain];
	NSLog(@"this string retain count is %d",[thisString retainCount]);
	[thisString release];
	NSLog(@"this string retain count is %d",[thisString retainCount]);
	//[thisString release]; // crash!
	NSLog(@"hey I'm still running");
	
	
}
- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
