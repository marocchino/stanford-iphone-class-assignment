//
//  grapheneDemoAppDelegate.h
//  grapheneDemo
//
//  Created by David Jacobs on 1/15/10.
//  Copyright Stanford University 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface grapheneDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet UISlider * slider;
	IBOutlet UILabel * label;
	IBOutlet UIView * dot;
	float position;
}

- (IBAction) sliderMoved;
- (void) updateUI;
@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

