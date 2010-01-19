//
//  HelloPolyAppDelegate.m
//  HelloPoly
//
//  Created by Shim Taewon on 10/01/18.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "HelloPolyAppDelegate.h"

@implementation HelloPolyAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
