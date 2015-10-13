//
//  WebViewController.h
//  NavCtrl
//
//  Created by Peter on 10/6/15.
//  Copyright (c) 2015 Aditya Narayan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface WebViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIWebView *productWebsite;
@property (strong, nonatomic) NSURL *myURL;
-(void) setURL: (NSString *) url;
@property (strong, nonatomic) WKWebView *wkWeb;


@end
