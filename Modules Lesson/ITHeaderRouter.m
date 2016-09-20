//
//  ITHeaderRouter.m
//  Modules Lesson
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITHeaderRouter.h"
#import "ITHeaderPresenter.h"
#import "ITHeaderInteractor.h"
#import "ITHeaderViewController.h"

static NSString* nameStoryboard = @"Main";
static NSString* identifierViewController = @"ITHeaderViewController";

@interface ITHeaderRouter()

@property(weak, nonatomic)ITHeaderViewController *userInterface;
@property(weak, nonatomic)ITHeaderPresenter *presenter;

@end


@implementation ITHeaderRouter

- (void)presentITHeaderInterfaceFromViewController:(UIViewController *)viewController
                                            container:(UIView *)container
                                             delegate:(id <ITHeaderDelegateInterface>)delegate {
    
    ITHeaderViewController* itHeaderViewController = [self itHeaderViewControllerFromStoryboard];
    
    self.userInterface = itHeaderViewController;
    [self configureDependencies];
    [self setDelegate:delegate];
    
    [itHeaderViewController.view setFrame:container.frame];
    [container addSubview:itHeaderViewController.view];
    [viewController addChildViewController:itHeaderViewController];
    [itHeaderViewController didMoveToParentViewController:viewController];
}

-(void)configureDependencies{
    ITHeaderInteractor * interactor = [ITHeaderInteractor new];
    ITHeaderPresenter * presenter = [ITHeaderPresenter new];
    
    presenter.router = self;
    self.presenter = presenter;
    
    self.userInterface.presenter = presenter;
    self.presenter.userInterface = self.userInterface;
    
    self.presenter.interactor = interactor;
    interactor.presenter = presenter;
}

-(void)setDelegate:(id<ITHeaderDelegateInterface>)delegate{
    self.presenter.delegate = delegate;
}

-(ITHeaderViewController*)itHeaderViewControllerFromStoryboard{
    UIStoryboard* storyboard = [self userStoryboard];
    ITHeaderViewController *vc = (id) [storyboard instantiateViewControllerWithIdentifier:identifierViewController];
    return vc;
}

-(UIStoryboard*)userStoryboard{
    return [UIStoryboard storyboardWithName:nameStoryboard bundle:[NSBundle mainBundle]];
}



@end
