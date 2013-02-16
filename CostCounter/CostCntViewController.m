//
//  CostCntViewController.m
//  CostCounter
//
//  Created by 香川 浩之 on 2013/01/20.
//  Copyright (c) 2013年 香川 浩之. All rights reserved.
//

#import "CostCntViewController.h"
#import "PertnersViewController.h"

@interface CostCntViewController ()

@end

@implementation CostCntViewController
@synthesize pertners;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //[[_Counter layer] setBorderColor:[[UIColor blackColor] CGColor]];
    //[[_Counter layer] setBorderWidth:1.0];

    //[[_SyukkinSuu layer] setCornerRadius:10.0];
    //[_SyukkinSuu setClipsToBounds:YES];

    //[[_TaikinSuu layer] setCornerRadius:10.0];
    //[_TaikinSuu setClipsToBounds:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"showPertnersList"]) {
        PertnersViewController *controller = [segue destinationViewController];
        controller.pertners = pertners;
    }
    
}

- (void)dealloc {
    //[_SyukkinSuu release];
    //[_TaikinSuu release];
    [_Counter release];
    [super dealloc];
}
- (void)viewDidUnload {
    [self setCounter:nil];
    [super viewDidUnload];
}
@end
