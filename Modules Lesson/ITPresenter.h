//
//  ITPresenter.h
//  Modules Lesson
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "UiKit/UIViewController.h"
#import "ITInteractorInterfaceIO.h"
#import "ITViewContorellerInterfaceIO.h"
#import "ITDelegateInterface.h"
#include "ITRouter.h"

#import "ITHeaderDelegateInterface.h"

@interface ITPresenter : NSObject <ITHeaderDelegateInterface>

@property (nonatomic, weak) id<ITViewInterfaceOutput> userInterface;
@property (nonatomic, strong) id<ITInteractorInterfaceInput> interactor;
@property (nonatomic, strong) ITRouter* router;

@property (weak, nonatomic)id <ITDelegateInterface> delegate;

@property (strong, nonatomic)NSNumber *type;

@end
