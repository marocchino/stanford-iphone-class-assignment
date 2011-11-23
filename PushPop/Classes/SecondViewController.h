//
//  SecondViewController.h
//  PushPop
//
//  Created by Shim Taewon on 10/02/07.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SecondViewController : UIViewController {
	IBOutlet UILabel *label;
	NSString *labelText;
}
@property (retain) NSString *labelText;

- (id)initWithText:(NSString *)someText;
@end
