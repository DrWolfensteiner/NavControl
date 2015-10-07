//
//  ChildViewController.m
//  NavCtrl
//
//  Created by Aditya Narayan on 10/22/13.
//  Copyright (c) 2013 Aditya Narayan. All rights reserved.
//

#import "ChildViewController.h"
#import "WebViewController.h"

@interface ChildViewController ()

@end

@implementation ChildViewController

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
    
    //Preserve selection between presentations.
    self.clearsSelectionOnViewWillAppear = NO;
    
    //Display an Edit button in the navigation bar for this view controller.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.appleProducts = [[NSMutableArray alloc]
                          initWithObjects:    @"ipad.png",
                          @"ipod.png",
                          @"iphone.png", nil];
    self.samsungProducts = [[NSMutableArray alloc]
                            initWithObjects:    @"s4.png",
                            @"note.png",
                            @"tab.png", nil];
    self.lgProducts = [[NSMutableArray alloc]
                       initWithObjects:    @"gpad.png",
                       @"v10.png",
                       @"g4.png", nil];
    self.htcProducts = [[NSMutableArray alloc]
                        initWithObjects:    @"nexus9.png",
                        @"HTC-One.png",
                        @"RE.png", nil];
    
    if ([self.title isEqualToString:@"Apple mobile devices"]) {
        self.products = [[NSMutableArray alloc ]
                         initWithObjects:@"iPad", @"iPod Touch",@"iPhone", nil];
    }
    else if ([self.title isEqualToString:@"Samsung mobile devices"]) {
        self.products = [[NSMutableArray alloc ]
                         initWithObjects:@"Galaxy S4", @"Galaxy Note", @"Galaxy Tab", nil];
    }
    else if ([self.title isEqualToString:@"HTC mobile devices"]) {
        self.products = [[NSMutableArray alloc ]
                         initWithObjects:@"Nexus 9", @"One M9", @"RE Camera", nil];
    }
    else if ([self.title isEqualToString:@"LG mobile devices"]) {
        self.products = [[NSMutableArray alloc ]
                         initWithObjects:@"G Pad", @"V10", @"G4", nil];
    }
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    //Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //#warning Incomplete method implementation.
    // Return the number of rows in the section.
    NSInteger count;
    if ([self.title isEqualToString:@"Apple mobile devices"]) {
        count = [self.appleProducts count];
    }
    else if ([self.title isEqualToString:@"Samsung mobile devices"]) {
        count = [self.samsungProducts count];
    }
    else if ([self.title isEqualToString:@"HTC mobile devices"]) {
        count = [self.htcProducts count];
    }
    else{
        count = [self.lgProducts count];
    }
    
    
    
    
    
    return count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    //Configure the cell...
    
    cell.textLabel.text = [self.products objectAtIndex:
                           [indexPath row]];
    if ([self.title isEqualToString: @"Apple mobile devices"]){
        cell.imageView.image = [UIImage imageNamed:[self.appleProducts objectAtIndex:
                                                    [indexPath row]]];
    }
    else if ([self.title isEqualToString: @"Samsung mobile devices"]){
        cell.imageView.image = [UIImage imageNamed:[self.samsungProducts objectAtIndex:
                                                    [indexPath row]]];
    }
    else if ([self.title isEqualToString: @"LG mobile devices"]){
        cell.imageView.image = [UIImage imageNamed:[self.lgProducts objectAtIndex:
                                                    [indexPath row]]];
    }
    else if ([self.title isEqualToString: @"HTC mobile devices"]){
        cell.imageView.image = [UIImage imageNamed:[self.htcProducts objectAtIndex:
                                                    [indexPath row]]];
    }
    
    return cell;
}

//Support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    //     Return NO if you do not want the specified item to be editable.
    return YES;
}

//Editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        if ([self.title isEqualToString:@"Apple mobile devices"]) {
            [self.products removeObjectAtIndex:indexPath.row];
            [self.appleProducts removeObjectAtIndex:indexPath.row];
        }
        else if ([self.title isEqualToString:@"Samsung mobile devices"]) {
            [self.products removeObjectAtIndex:indexPath.row];
            [self.samsungProducts removeObjectAtIndex:indexPath.row];
        }
        else if ([self.title isEqualToString:@"LG mobile devices"]) {
            [self.products removeObjectAtIndex:indexPath.row];
            [self.lgProducts removeObjectAtIndex:indexPath.row];
        }
        else if ([self.title isEqualToString:@"HTC mobile devices"]) {
            [self.products removeObjectAtIndex:indexPath.row];
            [self.htcProducts removeObjectAtIndex:indexPath.row];
        }
        
        //Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        //Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
}


//Support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
    NSString *buffer = [self.products objectAtIndex:fromIndexPath.row];
    [self.products removeObjectAtIndex:fromIndexPath.row];
    [self.products insertObject:buffer atIndex:toIndexPath.row];
    [self.tableView reloadData];
}


// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Navigation logic may go here, for example:
    //Create the next view controller.
    WebViewController *detailViewController = [[WebViewController alloc] initWithNibName:@"WebViewController" bundle:nil];
    
    //Pass the selected object to the new view controller.
    
    NSString *prod = [self.products objectAtIndex:indexPath.row];
    
    if ([self.title isEqualToString: @"Apple mobile devices"]){
        
        if ([prod isEqual: @"iPad"]) {
            [detailViewController setURL: @"http://www.apple.com/ipad/"];
        }
        else if ([prod isEqual: @"iPod Touch"]) {
            [detailViewController setURL: @"http://www.apple.com/ipod-touch/"];
        }
        else if ([prod isEqual: @"iPhone"]) {
            [detailViewController setURL: @"http://www.apple.com/iphone/"];
        }
    }
    if ([self.title isEqualToString: @"Samsung mobile devices"]){
        
        if ([prod isEqual: @"Galaxy S4"]) {
            [detailViewController setURL: @"http://www.samsung.com/global/microsite/galaxys4/"];
        }
        else if ([prod isEqual: @"Galaxy Note"]) {
            [detailViewController setURL: @"http://www.samsung.com/global/galaxy/galaxy-note5/"];
        }
        else if ([prod isEqual: @"Galaxy Tab"]) {
            [detailViewController setURL: @"http://www.samsung.com/us/mobile/galaxy-tab/"];
        }
    }
    if ([self.title isEqualToString: @"LG mobile devices"]){
        
        if ([prod isEqual: @"G Pad"]) {
            [detailViewController setURL: @"http://www.lg.com/us/tablets"];
        }
        else if ([prod isEqual: @"V10"]) {
            [detailViewController setURL: @"http://www.lg.com/us/mobile-phones/v10"];
        }
        else if ([prod isEqual: @"G4"]) {
            [detailViewController setURL: @"http://www.lg.com/us/mobile-phones/g4"];
        }
    }
    if ([self.title isEqualToString: @"HTC mobile devices"]){
        
        if ([prod isEqual: @"Nexus 9"]) {
            [detailViewController setURL: @"http://www.htc.com/us/tablets/nexus-9/"];
        }
        else if ([prod isEqual: @"One M9"]) {
            [detailViewController setURL: @"http://www.htc.com/us/smartphones/htc-one-m9/"];
        }
        else if ([prod isEqual: @"RE Camera"]) {
            [detailViewController setURL: @"http://www.htc.com/us/re/re-camera/"];
        }
    }
    
    
    //Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}



@end
