//
//  MarksPlaceMarksPlaceRouter.h
//  doytra
//
//  Created by Artem on 07/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "ITContactsDelegateInterface.h"

@class UIViewController;
@class UIView;

@interface ITContactsRouter : NSObject 
-(void)presentITContactsInterfaceFromViewController:(UIViewController*)viewController
                                          container:(UIView*)container
                                           delegate:(id <ITContactsDelegateInterface>)delegate;

@end
