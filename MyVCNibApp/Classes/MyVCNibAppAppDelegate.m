//
//  MyVCNibAppAppDelegate.m
//  MyVCNibApp
//
//  Created by Shim Taewon on 10/02/02.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import "MyVCNibAppAppDelegate.h"
#import "MyVCNibAppViewController.h"

@implementation MyVCNibAppAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
