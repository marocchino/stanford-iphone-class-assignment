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
}
@property int numberOfSides;
@property int minimumNumberOfSides;
@property int maximumNumberOfSides;
@property(readonly) float angleInDegrees;
@property(readonly) float angleInRadians;
@property(retain,readonly) NSString *name;

- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max;
@end
