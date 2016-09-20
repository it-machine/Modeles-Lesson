//
//  MarksPlaceMarksPlacePresenter.h
//  doytra
//
//  Created by Artem on 07/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "UiKit/UIViewController.h"
#import "ITProductViewInterfaceIO.h"
#import "ITProductInteractorInterfaceIO.h"
#import "ITProductsRouter.h"
#import "ITProductsDelegateInterface.h"

@interface ITProductPresenter : NSObject <ITProductInteractorInterfaceOutput, ITProductViewInterfaceInput>

@property (nonatomic, weak) id<ITProductViewInterfaceOutput> userInterface;
@property (nonatomic, strong) id<ITProductInteractorInterfaceInput> interactor;
@property (nonatomic, strong) ITProductsRouter* router;

@property (weak, nonatomic)id <ITProductDelegateInterface> delegate;
@property (strong, nonatomic)NSMutableArray<ITProductModel*> *arrayPlaces;

@end
