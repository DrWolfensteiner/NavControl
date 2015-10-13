//
//  DataManager.h
//  NavCtrl
//
//  Created by Peter on 10/7/15.
//  Copyright (c) 2015 Aditya Narayan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject

@property (nonatomic) NSMutableArray *companies;
-(void)companyDetailCreator;

//+ (instancetype)sharedManager;

@end
