//
//  ChildViewController.h
//  NavCtrl
//
//  Created by Aditya Narayan on 10/22/13.
//  Copyright (c) 2013 Aditya Narayan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Company.h"

@interface ChildViewController : UITableViewController

@property (nonatomic) NSMutableArray *appleProducts;
@property (nonatomic) NSMutableArray *samsungProducts;
@property (nonatomic) NSMutableArray *lgProducts;
@property (nonatomic) NSMutableArray *htcProducts;
@property (nonatomic) NSMutableArray *products;
@property (nonatomic, strong) Company *company;

@end
