//
//  grapheneBrokenAppDelegate.h
//  grapheneBroken
//
//  Created by David Jacobs on 1/15/10.
//  Copyright Stanford University 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Evaluator.h"
@interface grapheneBrokenAppDelegate : NSObject <UIApplicationDelegate> {
   UIWindow *window;
	IBOutlet UISlider * slider;
	IBOutlet UILabel * label;
	IBOutlet UIView * dot;
	IBOutlet UISegmentedControl * segmentedControl;
	Evaluator * evaluator;
	float t;
}

- (IBAction) sliderMoved;
- (IBAction) selectionChanged;
- (void) updateUI;
@property (nonatomic, retain) IBOutlet UIWindow *window;



@end

