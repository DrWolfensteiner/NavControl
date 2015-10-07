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
@property (retain, nonatomic) IBOutlet UIWebView *productWebsite;
@property (retain, nonatomic) NSURL *myURL;
-(void) setURL: (NSString *) url;
@property (retain, nonatomic) WKWebView *wkWeb;


@end
