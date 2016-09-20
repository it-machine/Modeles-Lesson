//
//  MarksPlaceMarksPlaceRouter.m
//  doytra
//
//  Created by Artem on 07/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITProductsRouter.h"
#import "ITProductPresenter.h"
#import "ITProductInteractor.h"
#import "ITProductViewController.h"

static NSString* nameStoryboard = @"Main";
static NSString* identifierViewController = @"ITProductViewController";

@interface ITProductsRouter()

@property(weak, nonatomic)ITProductViewController *userInterface;
@property(weak, nonatomic)ITProductPresenter *presenter;

@end


@implementation ITProductsRouter

-(void)presentITProductInterfaceFromViewController:(UIViewController*)viewController
                                          container:(UIView *)container
                                           delegate:(id <ITProductDelegateInterface>)delegate {
    
    ITProductViewController* userInterface = [self MarksPlaceViewControllerFromStoryboard];
    
    self.userInterface = userInterface;
    [self configureDependencies];
    [self setDelegate:delegate];
    
    [container addSubview:userInterface.view];
    [viewController addChildViewController:userInterface];
    [userInterface didMoveToParentViewController:viewController];
    
    [userInterface setFrame:container.bounds];
}

-(void)setDelegate:(id <ITProductDelegateInterface>)delegate{
    self.presenter.delegate = delegate;
}

-(void)configureDependencies{
    ITProductInteractor * interactor = [ITProductInteractor new];
    ITProductPresenter * presenter = [ITProductPresenter new];
    
    presenter.router = self;
    self.presenter = presenter;
    
    self.userInterface.presenter = presenter;
    self.presenter.userInterface = self.userInterface;
    
    self.presenter.interactor = interactor;
    interactor.presenter = presenter;
}

-(ITProductViewController*)MarksPlaceViewControllerFromStoryboard{
    UIStoryboard* storyboard = [self userStoryboard];
    ITProductViewController *vc = (id) [storyboard instantiateViewControllerWithIdentifier:identifierViewController];
    return vc;
}

-(UIStoryboard*)userStoryboard{
    return [UIStoryboard storyboardWithName:nameStoryboard bundle:[NSBundle mainBundle]];
}


@end
