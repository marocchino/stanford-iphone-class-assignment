//
//  MyVCNibAppViewController.m
//  MyVCNibApp
//
//  Created by Shim Taewon on 10/02/02.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import "MyVCNibAppViewController.h"

@implementation MyVCNibAppViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	label.text = @"we are clear!";
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
	float sliderValue = [[NSUserDefaults standardUserDefaults] floatForKey:@"sliderValue"];
	slider.value = sliderValue;
	label.text = [NSString stringWithFormat:@"%f", sliderValue];
}
- (void)viewWillDisappear:(BOOL)animated {
	float sliderValue = slider.value;
	[[NSUserDefaults standardUserDefaults] setFloat:sliderValue forKey:@"sliderValue"];
}
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	// 안쓴 캐쉬데이터를 날림.
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
