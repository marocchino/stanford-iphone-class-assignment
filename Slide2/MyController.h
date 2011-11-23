//
//  MyController.h
//
//  Created by Shim Taewon on 10/01/18.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface MyController : NSObject {
	IBOutlet UILabel *label;
	IBOutlet UISlider *slider;
}
-(IBAction)changeLabelText:(id)sender;
@end