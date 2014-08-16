//
//  MenuViewController.m
//  Open Sesame
//
//  Created by Jian Yao Ang on 8/16/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

#import "MenuViewController.h"
#import "ItemOneViewController.h"

@interface MenuViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation MenuViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"Cell";
    
    switch (indexPath.row)
    {
        case 0:
            cellID = @"main";
            break;
        case 1:
            cellID = @"item1";
            break;
        default:
            break;
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UINavigationController *navController = segue.destinationViewController;
    ItemOneViewController *itemOneVC = [navController childViewControllers].firstObject;
    
    if ([itemOneVC isKindOfClass:[ItemOneViewController class]])
    {
        itemOneVC.title = @"Item One";
    }
}

@end
