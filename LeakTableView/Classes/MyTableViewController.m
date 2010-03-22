//
//  MyTableViewController.m
//  MyTableView
//
//  Created by Evan Doll on 10/21/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "MyTableViewController.h"


@implementation MyTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        names = [[NSArray alloc] initWithObjects:@"Paul", @"Josh", @"Al", @"David", @"Paul", nil];
    }
    return self;
}

- (void)dealloc
{
    [names release];
    
    [super dealloc];
}

- (void)viewWillAppear:(BOOL)animated
{
    // Hmmmm... a leak!
    NSMutableArray *array = [NSMutableArray array];
    NSMutableString *string = [[NSMutableString alloc] init];
    [array addObject:string];
    [string release];
    
    [super viewWillAppear:animated];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [names count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:nil] autorelease];
    
    cell.textLabel.text = [names objectAtIndex:indexPath.row];
    
    return cell;
}

@end
