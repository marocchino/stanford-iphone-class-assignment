//
//  MyController.h
//
//  Created by Shim Taewon on 10/01/19.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface MyController : NSObject/* Specify a superclass (eg: NSObject or NSView) */ {
    IBOutlet UILabel *number;
}
- (IBAction)decNum:(id)sender;
- (IBAction)incNum:(id)sender;
@end
