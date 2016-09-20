//
//  ITHeaderPresenter.h
//  Modules Lesson
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "UiKit/UIViewController.h"
#import "ITHeaderViewInterfaceIO.h"
#import "ITHeaderInteractorInterfaceIO.h"
#import "ITHeaderRouter.h"
#import "ITHeaderDelegateInterface.h"


@interface ITHeaderPresenter : NSObject <ITHeaderInteractorInterfaceOutput, ITHeaderViewInterfaceInput>

@property (nonatomic, weak) id<ITHeaderViewInterfaceOutput> userInterface;
@property (nonatomic, strong) id<ITHeaderInteractorInterfaceInput> interactor;
@property (nonatomic, strong) ITHeaderRouter* router;

@property(nonatomic, weak)id <ITHeaderDelegateInterface> delegate;
@end
