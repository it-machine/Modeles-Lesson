//
//  ITRouter.m
//  Modules Lesson
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITRouter.h"
#import "ITPresenter.h"
#import "ITInteractor.h"
#import "ITViewController.h"
#import "ITHeaderViewController.h"
#import "ITHeaderRouter.h"
#import "ITProductsRouter.h"
#import "ITContactsRouter.h"

static NSString* nameStoryboard = @"Main";
static NSString* identifierViewController = @"ITViewController";

@interface ITRouter()
@property (weak, nonatomic)ITPresenter *presenter;
@property (weak, nonatomic)ITViewController* userInterface;
@property(strong, nonatomic)UINavigationController*navigationController;

@property(weak, nonatomic)ITHeaderRouter* headerRouter;

@property(weak, nonatomic)ITProductsRouter* productsRouter;
@property(weak, nonatomic)ITContactsRouter* contactsRouter;

@end


@implementation ITRouter


-(void)presentInterfaceFromWindow:(UIWindow*)window
                         delegate:(id<ITDelegateInterface>)delegate{
    
    ITViewController* itViewController = [self itViewControllerFromStoryboard];
    
    UINavigationController* navController = [[UINavigationController alloc] initWithRootViewController:itViewController];
    
    self.userInterface = itViewController;
    [self configureDependencies];
    self.navigationController = navController;
    window.rootViewController = self.userInterface;
    [window makeKeyAndVisible];
    [self.userInterface.view setFrame:window.frame];
    
    // Submodule
    [self setDelegate:delegate];
    [self presentITHeader];
}

-(void)setDelegate:(id<ITDelegateInterface>)delegate{
    self.presenter.delegate = delegate;
}

-(void)presentITHeader{
    ITHeaderRouter* router = [ITHeaderRouter new];
    [router presentITHeaderInterfaceFromViewController:self.userInterface container:self.userInterface.headerContainer delegate:self.presenter];
    self.headerRouter = router;
}

-(void)configureDependencies{
    ITInteractor * interactor = [ITInteractor new];
    ITPresenter * presenter = [ITPresenter new];
    
    presenter.router = self;
    self.presenter = presenter;
    
    self.userInterface.presenter = presenter;
    self.presenter.userInterface = self.userInterface;
    
    self.presenter.interactor = interactor;
    interactor.presenter = presenter;
}

-(ITViewController*)itViewControllerFromStoryboard{
    UIStoryboard* storyboard = [self userStoryboard];
    ITViewController *vc = (id) [storyboard instantiateViewControllerWithIdentifier:identifierViewController];
    return vc;
}

-(UIStoryboard*)userStoryboard{
    return [UIStoryboard storyboardWithName:nameStoryboard bundle:[NSBundle mainBundle]];
}

#pragma mark - submodules
-(void)changeType:(PageType)type{
    switch (type) {
        case PageTypeProducts:
            [self presentProducts];
            break;
        case PageTypeContacts:
            [self presentContacts];
            break;
    }
}

-(void)presentProducts{
    [self cleanSubview:self.userInterface.bodyContainer];
    ITProductsRouter* router = [ITProductsRouter new];
    [router presentITProductInterfaceFromViewController:self.userInterface container:self.userInterface.bodyContainer delegate:self.presenter];
    self.productsRouter = router;
}

-(void)presentContacts{
    [self cleanSubview:self.userInterface.bodyContainer];
    ITContactsRouter* router = [ITContactsRouter new];
    [router presentITContactsInterfaceFromViewController:self.userInterface container:self.userInterface.bodyContainer delegate:self.presenter];
    self.contactsRouter = router;
}

-(void)cleanSubview:(UIView*)view{
    NSArray *arraySubviews = view.subviews;
    for (UIView *viewSubviews in arraySubviews) {
        [viewSubviews removeFromSuperview];
    }
    
    NSArray *arrayVC = self.userInterface.childViewControllers;
    for (UIViewController *childVC in arrayVC) {
        if(![childVC isKindOfClass:[ITHeaderViewController class]])
            [childVC removeFromParentViewController];
    }
}

-(void)dealloc{
    NSLog(@"died");
}

@end
