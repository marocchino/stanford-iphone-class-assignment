//
//  grapheneBrokenAppDelegate.m
//  grapheneBroken
//
//  Created by David Jacobs on 1/15/10.
//  Copyright Stanford University 2010. All rights reserved.
//

#import "grapheneBrokenAppDelegate.h"

@implementation grapheneBrokenAppDelegate

@synthesize window;




- (void) awakeFromNib {
	t = [slider value];
	evaluator = [[Evaluator alloc] init];
	[self updateUI];
}

- (void) updateUI {
	CGPoint point = [evaluator eval: t];
	dot.center = point;
	label.text = [NSString stringWithFormat: @"f(%.2f) = (%.2f,%.2f)", t, point.x, point.y];	
}


- (IBAction)selectionChanged {
	evaluator.mode = [segmentedControl titleForSegmentAtIndex: [segmentedControl selectedSegmentIndex]];
	[self updateUI];
}
- (IBAction)sliderMoved {
	t = slider.value;
	[self updateUI];
}

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    // Override point for customization after application launch
    [window makeKeyAndVisible];
	
}

- (void)dealloc {
	[slider release];
	[label release];
	[dot release];
	[evaluator release];
	[segmentedControl release];  	
	[window release];
    [super dealloc];
}



@end
