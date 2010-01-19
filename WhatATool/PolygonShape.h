//
//  PolygonShape.h
//  WhatATool
//
//  Created by Shim Taewon on 10/01/19.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PolygonShape : NSObject {
	int numberOfSides;
	int minimumNumberOfSides;
	int maximumNumberOfSides;
//	float angleInDegrees;
//	float angleInRadians;
//	NSString* name;
}
@property int numberOfSides;
@property int minimumNumberOfSides;
@property int maximumNumberOfSides;
@property(nonatomic,readonly) float angleInDegrees;
@property(nonatomic,readonly) float angleInRadians;
@property(nonatomic,readonly) NSString *name;
- (float) angleInDegrees;
- (float) angleInRadians;
- (NSString*) name;
- (id)numberOfSides:(int)sides;
- (id)minimumNumberOfSides:(int)min;
- (id)maximumNumberOfSides:(int)max;
- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max;
@end
