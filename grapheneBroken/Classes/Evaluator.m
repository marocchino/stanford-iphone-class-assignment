//
//  Evaluator.m
//  grapheneComplete
//
//  Created by David Jacobs on 1/14/10.
//  Copyright 2010 Stanford University. All rights reserved.
//

#import "Evaluator.h"


@implementation Evaluator

@synthesize mode;

- (void) setMode:(NSString *) newMode {
	NSArray * validModes = [NSArray arrayWithObjects: @"Constant", @"Sine", @"Spiral",nil];
	if (![newMode isEqualToString: mode] && [validModes containsObject: newMode]) {		
		[mode release];
		mode = [newMode retain];		
	}
}

- (Evaluator *) init {
	if (self = [super init]) {
		self.mode = [NSString stringWithFormat:@"%@", @"Constant"];		
	}
	return self;
}


- (CGPoint) eval:(float)t {

	CGPoint point;
	if ([mode isEqualToString: @"Sine"]) {
		point.x = t;
		point.y = 250 + sinf(t/30)*100;
	} else if ([mode isEqualToString: @"Spiral"]){
		point.x = 160 + sinf(t/15)*(t/3);
		point.y = 250 + cosf(t/15)*(t/3);
	} else {
		point.x = t;
		point.y = 250;
	}
	return point;
}


- (void) dealloc {
	[mode release];
	[super dealloc];
}

@end
