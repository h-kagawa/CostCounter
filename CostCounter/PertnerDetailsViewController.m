//
//  PertnerDetailsViewController.m
//  CostCounter
//
//  Created by 香川 浩之 on 2013/02/15.
//  Copyright (c) 2013年 香川 浩之. All rights reserved.
//

#import "PertnerDetailsViewController.h"

@interface PertnerDetailsViewController ()

@end

@implementation PertnerDetailsViewController
@synthesize delegate;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
    if (indexPath.section == 0)
		[self.nameTextField becomeFirstResponder];

}

- (IBAction)cancel:(id)sender
{
	[self.delegate pertnerDetailsViewControllerDidCancel:self];
}
- (IBAction)done:(id)sender
{
	[self.delegate pertnerDetailsViewControllerDidSave:self];
}
- (void)dealloc {
    [_nameTextField release];
    [super dealloc];
}
@end
