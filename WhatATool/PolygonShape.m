//
//  PolygonShape.m
//  WhatATool
//
//  Created by Shim Taewon on 10/01/19.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PolygonShape.h"


@implementation PolygonShape
@synthesize numberOfSides, minimumNumberOfSides, maximumNumberOfSides;
- (id) init
{
//	self = [super init];
//	if (self != nil) {
	return [self initWithNumberOfSides:5 minimumNumberOfSides:3 maximumNumberOfSides:10];
//	}
//	return self;
}
- (NSString *) description
{
	NSString *result;
	result = [NSString stringWithFormat:@"Hello I am a %d-sided polygon (aka a %@) with angles of %f degrees (%f radians).",numberOfSides,[self name],[self angleInDegrees],[self angleInRadians]];
	return result;
}
- (float) angleInDegrees
{
	return (float)180.0f*(numberOfSides-2)/numberOfSides;
}
- (float) angleInRadians
{
	return (float)M_PI*(numberOfSides-2)/numberOfSides;
}
- (NSString *) name
{
	switch (numberOfSides) {
		case 3:
			return @"triangle";
		case 4:
			return @"quadrilateral";
		case 5:
			return @"pentagon";
		case 6:
			return @"hexagon";
		case 7:
			return @"heptagon";
		case 8:
			return @"octagon";
		case 9:
			return @"enneagon";
		case 10:
			return @"decagon";
		case 11:
			return @"hendecagon";
		case 12:
			return @"dodecagon";
		default:
			return @"unknown";
	}
}
- (void)setNumberOfSides:(int)sides
{
	if (sides < minimumNumberOfSides) {
		numberOfSides = minimumNumberOfSides;
	} else if(sides > maximumNumberOfSides) {
		numberOfSides = maximumNumberOfSides;
	} else {
		numberOfSides = sides;
	}
}
- (void)setMinimumNumberOfSides:(int)min
{
	if (min > 2) {
		minimumNumberOfSides = min;
	} else {
		minimumNumberOfSides = 2;
	}
}
- (void)setMaximumNumberOfSides:(int)max
{
	if (max <= 12) {
		maximumNumberOfSides = max;
	} else {
		maximumNumberOfSides = 12;
	}
}
- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max
{
	[self setMaximumNumberOfSides:max];
	[self setMinimumNumberOfSides:min];
	[self setNumberOfSides:sides];
	return self;
}

@end
