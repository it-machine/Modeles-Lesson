//
//  ITRouter.h
//  Modules Lesson
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "ITDelegateInterface.h"

@class UIWindow;
@class ITHeaderViewController;


typedef NS_ENUM(NSInteger, PageType){
    PageTypeProducts,
    PageTypeContacts
};

@interface ITRouter : NSObject
-(void)presentInterfaceFromWindow:(UIWindow*)window
                         delegate:(id<ITDelegateInterface>)delegate;

-(void)changeType:(PageType)type;

@end
