//
//  Evaluator.h
//  grapheneComplete
//
//  Created by David Jacobs on 1/14/10.
//  Copyright 2010 Stanford University. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Evaluator : NSObject {
	NSString * mode;
}

- (CGPoint) eval: (float) t;

@property (retain) NSString * mode;


@end
