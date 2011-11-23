//
//  grapheneDemoAppDelegate.m
//  grapheneDemo
//
//  Created by David Jacobs on 1/15/10.
//  Copyright Stanford University 2010. All rights reserved.
//

#import "grapheneDemoAppDelegate.h"

@implementation grapheneDemoAppDelegate

@synthesize window;

- (void) awakeFromNib {
	position = slider.value;
	[self updateUI];
}

- (IBAction) sliderMoved {
	NSLog(@"slider moved to %f", slider.value);
	position = slider.value;
	[self updateUI];
}

- (void) updateUI {
	CGPoint point = CGPointMake(position, 250.0f+100*sinf(position/30));
	label.text = [NSString stringWithFormat: @"(%0.2f,%0.2f)", point.x, point.y];
	[dot setCenter: point];
}


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
	[slider release];
	[label release];
	[dot release];
    [window release];
    [super dealloc];
}


@end
