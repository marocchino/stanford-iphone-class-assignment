//
//  MyTableViewAppDelegate.m
//  MyTableView
//
//  Created by Evan Doll on 10/21/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import "MyTableViewAppDelegate.h"
#import "MyTableViewController.h"

@implementation MyTableViewAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    myTableViewController = [[MyTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    myTableViewController.view.frame = [UIScreen mainScreen].applicationFrame;
    
    [window addSubview:myTableViewController.view];
    
    // Override point for customization after application launch
    [window makeKeyAndVisible];
    
    
    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
