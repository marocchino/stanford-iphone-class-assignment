//
//  grapheneAppDelegate.m
//  graphene
//
//  Created by Shim Taewon on 10/01/29.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import "grapheneAppDelegate.h"

@implementation grapheneAppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	
    [window makeKeyAndVisible];
	
	return YES;
}
- (void) awakeFromNib {
	position = 100.0f;
	[self updateUI];
}
- (void) updateUI{	
	CGPoint point = CGPointMake(position, 250.0f+100.f*sinf(position/30.0f));
	label.text = [NSString stringWithFormat:@"(%0.2f,%0.2f)",point.x,point.y];
	[dot setCenter:point];
}
- (IBAction) sliderMoved{		
	position = slider.value;
	NSLog(@"slider moved %f",position);
	[self updateUI];
}
- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
