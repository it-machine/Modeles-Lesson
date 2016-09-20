//
//  MarksPlaceMarksPlaceRouter.m
//  doytra
//
//  Created by Artem on 07/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITContactsRouter.h"
#import "ITContactsPresenter.h"
#import "ITContactsInteractor.h"
#import "ITContactsViewController.h"
#import "ITContactsRouter.h"

static NSString* nameStoryboard = @"Main";
static NSString* identifierViewController = @"ITContactsViewController";

@interface ITContactsRouter()

@property(weak, nonatomic)ITContactsViewController *userInterface;
@property(weak, nonatomic)ITContactsPresenter *presenter;

@end


@implementation ITContactsRouter

-(void)presentITContactsInterfaceFromViewController:(UIViewController*)viewController
                                          container:(UIView*)container
                                           delegate:(id <ITContactsDelegateInterface>)delegate{
    
    ITContactsViewController* userInterface = [self ITContactsViewControllerFromStoryboard];
    
    self.userInterface = userInterface;
    [self configureDependencies];
    [self setDelegate:delegate];
    
    [container addSubview:userInterface.view];
    [viewController addChildViewController:userInterface];
    [userInterface didMoveToParentViewController:viewController];
    
    [userInterface setFrame:container.bounds];
}

-(void)setDelegate:(id <ITContactsDelegateInterface>)delegate{
    self.presenter.delegate = delegate;
}

-(void)configureDependencies{
    ITContactsInteractor * interactor = [ITContactsInteractor new];
    ITContactsPresenter * presenter = [ITContactsPresenter new];
    
    presenter.router = self;
    self.presenter = presenter;
    
    self.userInterface.presenter = presenter;
    self.presenter.userInterface = self.userInterface;
    
    self.presenter.interactor = interactor;
    interactor.presenter = presenter;
}

-(ITContactsViewController*)ITContactsViewControllerFromStoryboard{
    UIStoryboard* storyboard = [self userStoryboard];
    ITContactsViewController *vc = (id) [storyboard instantiateViewControllerWithIdentifier:identifierViewController];
    return vc;
}

-(UIStoryboard*)userStoryboard{
    return [UIStoryboard storyboardWithName:nameStoryboard bundle:[NSBundle mainBundle]];
}

@end
