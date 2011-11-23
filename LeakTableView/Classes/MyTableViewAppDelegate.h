//
//  MyTableViewAppDelegate.h
//  MyTableView
//
//  Created by Evan Doll on 10/21/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyTableViewController;

@interface MyTableViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MyTableViewController *myTableViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

