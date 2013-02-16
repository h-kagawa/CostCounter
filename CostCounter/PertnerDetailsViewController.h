//
//  PertnerDetailsViewController.h
//  CostCounter
//
//  Created by 香川 浩之 on 2013/02/15.
//  Copyright (c) 2013年 香川 浩之. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PertnerDetailsViewController;

@protocol PertnerDetailsViewControllerDelegate
- (void)pertnerDetailsViewControllerDidCancel:
(PertnerDetailsViewController *)controller;
- (void)pertnerDetailsViewControllerDidSave:
(PertnerDetailsViewController *)controller;
@end

@interface PertnerDetailsViewController : UITableViewController
@property (retain, nonatomic) IBOutlet UITextField *nameTextField;

@property (nonatomic, unsafe_unretained) id  delegate;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end
