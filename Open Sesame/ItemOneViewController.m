//
//  ItemOneViewController.m
//  Open Sesame
//
//  Created by Jian Yao Ang on 8/16/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

#import "ItemOneViewController.h"
#import <SWRevealViewController.h>

@interface ItemOneViewController ()
@property (strong, nonatomic) IBOutlet UIBarButtonItem *menuBarButtonItem;

@end

@implementation ItemOneViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupPage];
}

-(void)setupPage
{
    SWRevealViewController *revealViewController = self.revealViewController;
    
    if (revealViewController)
    {
        [self.menuBarButtonItem setTarget:self.revealViewController];
        [self.menuBarButtonItem setAction:@selector(revealToggle:)];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
}

@end
