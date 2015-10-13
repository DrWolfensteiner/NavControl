//
//  qcdDemoViewController.h
//  NavCtrl
//
//  Created by Aditya Narayan on 10/22/13.
//  Copyright (c) 2013 Aditya Narayan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataManager.h"

@class ChildViewController;

@interface qcdDemoViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *companyLogo;
@property (nonatomic, strong) IBOutlet  ChildViewController * childVC;
@property (nonatomic, strong) DataManager *managerOfData;
@property (nonatomic, strong) NSMutableArray *companies;

@end
