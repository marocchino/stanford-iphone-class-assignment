//
//  grapheneAppDelegate.h
//  graphene
//
//  Created by Shim Taewon on 10/01/29.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface grapheneAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet UISlider *slider;
	IBOutlet UILabel *label;
	IBOutlet UIView *dot;
	float position;
}
- (IBAction) sliderMoved;
- (void) updateUI;
@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

