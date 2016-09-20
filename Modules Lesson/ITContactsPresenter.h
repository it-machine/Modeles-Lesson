//
//  MarksPlaceMarksPlacePresenter.h
//  doytra
//
//  Created by Artem on 07/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "UiKit/UIViewController.h"
#import "ITContactsViewInterfaceIO.h"
#import "ITContactsInteractorInterfaceIO.h"
#import "ITContactsRouter.h"
#import "ITContactsDelegateInterface.h"

@interface ITContactsPresenter : NSObject <ITContactsInteractorInterfaceOutput, ITContactsViewInterfaceInput>

@property (nonatomic, weak) id<ITContactsViewInterfaceOutput> userInterface;
@property (nonatomic, strong) id<ITContactsInteractorInterfaceInput> interactor;
@property (nonatomic, strong) ITContactsRouter* router;

@property (weak, nonatomic)id <ITContactsDelegateInterface> delegate;

@end
