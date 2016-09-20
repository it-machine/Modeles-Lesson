//
//  ITHeaderRouter.h
//  Modules Lesson
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"
#import "ITHeaderDelegateInterface.h"

@interface ITHeaderRouter : NSObject

-(void)presentITHeaderInterfaceFromViewController:(UIViewController*)viewController container:(UIView*)container delegate:(id <ITHeaderDelegateInterface>)delegate;

@end

