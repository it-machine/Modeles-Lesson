//
//  MarksPlaceMarksPlaceRouter.h
//  doytra
//
//  Created by Artem on 07/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "ITProductsDelegateInterface.h"

@class UIViewController;
@class UIView;

@interface ITProductsRouter : NSObject
-(void)presentITProductInterfaceFromViewController:(UIViewController*)viewController
                                          container:(UIView*)container
                                           delegate:(id <ITProductDelegateInterface>)delegate;

@end
