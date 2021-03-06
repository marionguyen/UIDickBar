//
//  RootViewController.m
//  UIDickBar
//
//  Created by digdog on 3/6/11.
//  Copyright 2011 Ching-Lan 'digdog' HUANG. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"toggle" style:UIBarButtonItemStyleBordered target:self action:@selector(toggleDickBar:)];
	self.navigationItem.rightBarButtonItem = item;
	[item release];
}

- (void)loadDickBar {
	UIDickBar *db = [[UIDickBar alloc] initWithDickTitle:@"#DickBar" 
											   dickBadge:@"Stupid" 
											 actionBlock:^{
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://digdog.tumblr.com"]];
    }];
	self.dickBar = db;
	[db release];
}

 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
    }
    cell.textLabel.text = @"For God's Sake";
    cell.textLabel.textColor = [UIColor lightGrayColor];
    cell.detailTextLabel.text = @"Do Not Use This Component In Your iOS Apps";
    cell.detailTextLabel.textColor = [UIColor lightGrayColor];

    // Configure the cell.
    return cell;
}


@end
