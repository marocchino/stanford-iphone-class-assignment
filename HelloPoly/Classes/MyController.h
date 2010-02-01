//
//  MyController.h
//
//  Created by Shim Taewon on 10/01/19.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "PolygonShape.h"

@interface MyController : UIViewController {
    IBOutlet UILabel *number;
	IBOutlet PolygonShape *poly;
	IBOutlet UILabel *polygonName;
}
- (IBAction)decNum:(id)sender;
- (IBAction)incNum:(id)sender;
- (void)apply;
@end
