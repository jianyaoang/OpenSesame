//
//  MainViewController.m
//  Open Sesame
//
//  Created by Jian Yao Ang on 8/16/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

#import "MainViewController.h"
#import <SWRevealViewController.h>

@interface MainViewController ()

@property (strong, nonatomic) IBOutlet UIBarButtonItem *menuBarButtonItem;

@end

@implementation MainViewController


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
