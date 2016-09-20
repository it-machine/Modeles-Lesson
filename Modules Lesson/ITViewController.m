//
//  ITViewController.m
//  Modules Lesson
//
//  Created by Artem Konarev on 17.09.16.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITViewController.h"

@interface ITViewController ()

@end

@implementation ITViewController{
    UIView* p_headerView;
    UIView* p_bodyView;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self configNavigationController];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initViewContainer];
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

-(void)configNavigationController{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    
    self.navigationItem.title = @"Module Lesson";
    
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    
    [self setNeedsStatusBarAppearanceUpdate];
}

-(void)initViewContainer{
    p_headerView = [UIView new];
    p_bodyView = [UIView new];
    
    [self.view addSubview:p_headerView];
    [self.view addSubview:p_bodyView];
    
    self.headerContainer = p_headerView;
    self.bodyContainer = p_bodyView;
    
    CGFloat positionY = 0;
    CGFloat width = CGRectGetWidth(self.view.frame);
    
    CGRect rectHeader = CGRectMake(0, positionY, width, 45.f);
    [p_headerView setFrame:rectHeader];
    positionY += 45.f;
    
    CGRect rectBody = CGRectMake(0, positionY, width, CGRectGetHeight(self.view.frame) - positionY);
    [p_bodyView setFrame:rectBody];
    
}



@end
