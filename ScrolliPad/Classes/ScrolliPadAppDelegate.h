//
//  ScrolliPadAppDelegate.h
//  ScrolliPad
//
//  Created by Shim Taewon on 10/02/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScrolliPadViewController;

@interface ScrolliPadAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ScrolliPadViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ScrolliPadViewController *viewController;

@end

