//
//  DataManager.m
//  NavCtrl
//
//  Created by Peter on 10/7/15.
//  Copyright (c) 2015 Aditya Narayan. All rights reserved.
//

#import "DataManager.h"
#import "Company.h"
#import "Product.h"

@implementation DataManager

-(void) companyDetailCreator{
    Company *apple = [[Company alloc] init];
    Company *samsung = [[Company alloc] init];
    Company *lg = [[Company alloc] init];
    Company *htc = [[Company alloc] init];
    
    // Apple details
    
    apple.name = @"Apple Mobile Devices";
    apple.logo = @"Apple.png";
    
    Product *iPad = [[Product alloc] init];
    Product *iPod = [[Product alloc] init];
    Product *iPhone = [[Product alloc] init];
    
    iPad.productName = @"iPad";
    iPad.productLogo = @"ipad.png";
    iPad.productURL = @"http://www.apple.com/ipad/";
    
    iPod.productName = @"iPod";
    iPod.productLogo = @"ipod.png";
    iPod.productURL = @"http://www.apple.com/ipod-touch/";
    
    iPhone.productName = @"iPhone";
    iPhone.productLogo = @"iphone.png";
    iPhone.productURL = @"http://www.apple.com/iphone/";
    
    apple.products = [NSMutableArray arrayWithObjects: iPad, iPod, iPhone, nil];
    
    // Samsung details
    
    samsung.name = @"Samsung Mobile Devices";
    samsung.logo = @"samsung.png";
    
    Product *galaxyS4 = [[Product alloc] init];
    Product *galaxyNote = [[Product alloc] init];
    Product *galaxyTab = [[Product alloc] init];
    
    galaxyS4.productName = @"Galaxy S4";
    galaxyS4.productLogo = @"s4.png";
    galaxyS4.productURL = @"http://www.samsung.com/global/microsite/galaxys4/";
    
    galaxyNote.productName = @"Galaxy Note";
    galaxyNote.productLogo = @"note.png";
    galaxyNote.productURL = @"http://www.samsung.com/global/galaxy/galaxy-note5/";
    
    galaxyTab.productName = @"Galaxy Tab";
    galaxyTab.productLogo = @"tab.png";
    galaxyTab.productURL = @"http://www.samsung.com/us/mobile/galaxy-tab/";
    
    samsung.products = [NSMutableArray arrayWithObjects: galaxyS4, galaxyNote, galaxyTab, nil];
    //LG
    
    lg.name = @"LG Mobile Devices";
    lg.logo = @"LG.png";
    
    Product *gPad = [[Product alloc] init];
    Product *v10 = [[Product alloc] init];
    Product *g4 = [[Product alloc] init];
    
    gPad.productName = @"G Pad";
    gPad.productLogo = @"GPad.png";
    gPad.productURL = @"http://www.lg.com/us/tablets";
    
    v10.productName = @"V10";
    v10.productLogo = @"v10.png";
    v10.productURL = @"http://www.lg.com/us/mobile-phones/v10";
    
    g4.productName = @"G4";
    g4.productLogo = @"g4.png";
    g4.productURL = @"http://www.lg.com/us/mobile-phones/g4";
    
    lg.products = [NSMutableArray arrayWithObjects: gPad, v10, g4, nil];
    //HTC
    
    htc.name = @"HTC Mobile Devices";
    htc.logo = @"HTC.png";
    
    Product *nexus9 = [[Product alloc] init];
    Product *oneM9 = [[Product alloc] init];
    Product *reCamera = [[Product alloc] init];
    
    nexus9.productName = @"Nexus 9";
    nexus9.productLogo = @"nexus9.png";
    nexus9.productURL = @"http://www.htc.com/us/tablets/nexus-9/";
    
    oneM9.productName = @"One M9";
    oneM9.productLogo = @"HTC-One.png";
    oneM9.productURL = @"http://www.htc.com/us/smartphones/htc-one-m9/";
    
    reCamera.productName = @"RE Camera";
    reCamera.productLogo = @"RE.png";
    reCamera.productURL = @"http://www.htc.com/us/re/re-camera/";
    
    htc.products = [NSMutableArray arrayWithObjects: nexus9, oneM9, reCamera, nil];
    
    
    self.companies = [NSMutableArray arrayWithArray: @[apple, samsung, lg, htc]];
}

//+ (instancetype)sharedManager {
//    static DataManager *myDataManager;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        myDataManager = [[self alloc] init];
//    });
//    return myDataManager;
//}
//
//- (instancetype)init {
//    if (self = [super init]) {
//        _companies = [DataManager defaultCompanies];
//
//    }
//    return self;
//}

//+ (NSMutableArray *)defaultCompanies
//{
//    //make companies and return them
//    
//    int numberOfCompaniesToCreateInFakeData = 4;
//    NSArray *potentialFakeCompanyNames = @[@"Apple", @"Samsung", @"LG", @"HTC"];
//    //logos same thing
//    
//    NSMutableArray *mutableCompanies = [NSMutableArray arrayWithCapacity:numberOfCompaniesToCreateInFakeData];
//    
//    for (int i = 0; i<numberOfCompaniesToCreateInFakeData; ++i) {
//        Company *companyMadeInForLoop = [[Company alloc] init];
//        [companyMadeInForLoop setName:potentialFakeCompanyNames[i]];
//        [mutableCompanies addObject:companyMadeInForLoop];
//    }
//    
//    return mutableCompanies;
//}

@end

