//
//  MyImageView.m
//
//  Created by Shim Taewon on 10/01/26.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyImageView.h"

@implementation MyImageView
- (void)drawRect:(CGRect)rect
{
	// Start by getting your context, you will need it
	// for the rest of the drawing functions.
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	// This array holds all of the points to be put into the context.
	CGPoint points[3];
	points[0] = CGPointMake (10.0, 10.0);
	points[1] = CGPointMake (100.0, 10.0);
	points[2] = CGPointMake (10.0, 100.0);
	
	// Set background color of the context to white.
	// Arguments 2, 3, and 4 represent red, green, and blue, respectively.
	// The last argument is the opacity.
	// The value ranges are between 0.0 and 1.0.
	CGContextSetRGBFillColor(context, 1.0, 1.0, 1.0, 0.0);
	
	// Paint the base of the context.
	CGContextFillRect(context, rect);
	
	// Set color of the lines to black, with full opacity.
	CGContextSetRGBStrokeColor(context, 0.0, 0.0, 0.0, 1.0);
	
	// Add the coordinates of the lines to the context.
	// The last argument is the number of elements in the array.
	CGContextAddLines(context, points, 3);
	
	// Connect the end of the last line to the first
	// to close the triangle.
	CGContextClosePath(context);
	
	// Finally draw your lines.
	CGContextStrokePath(context);
}
@end
