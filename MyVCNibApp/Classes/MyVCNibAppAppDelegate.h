//
//  MyVCNibAppAppDelegate.h
//  MyVCNibApp
//
//  Created by Shim Taewon on 10/02/02.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyVCNibAppViewController;

@interface MyVCNibAppAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MyVCNibAppViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MyVCNibAppViewController *viewController;

@end

