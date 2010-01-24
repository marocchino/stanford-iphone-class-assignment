//
//  RetainCountTestAppDelegate.h
//  RetainCountTest
//
//  Created by Shim Taewon on 10/01/24.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RetainCountTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
- (IBAction) runMyTest;
@end

