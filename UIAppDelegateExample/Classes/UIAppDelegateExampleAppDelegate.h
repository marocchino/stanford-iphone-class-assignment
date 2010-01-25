//
//  UIAppDelegateExampleAppDelegate.h
//  UIAppDelegateExample
//
//  Created by Shim Taewon on 10/01/25.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAppDelegateExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet UILabel *label;
	IBOutlet UISlider *slider;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
- (IBAction) flashWindow;
- (IBAction) printValue:(id)sender;
- (IBAction) printValue:(id)sender withEvent:(UIEvent *)event;
@end

