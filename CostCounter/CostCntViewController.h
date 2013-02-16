//
//  CostCntViewController.h
//  CostCounter
//
//  Created by 香川 浩之 on 2013/01/20.
//  Copyright (c) 2013年 香川 浩之. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface CostCntViewController : UIViewController
@property (retain, nonatomic) IBOutlet UILabel *Counter;
@property (nonatomic, strong) NSMutableArray *pertners;
@end
