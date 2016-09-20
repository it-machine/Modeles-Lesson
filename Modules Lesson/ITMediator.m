//
//  ITMediator.m
//  doytra
//
//  Created by Сергей Романков on 26.04.16.
//  Copyright © 2016 Сергей Романков. All rights reserved.
//

#import "ITMediator.h"
#import "AppDelegate.h"
#import "ITRouter.h"

@import UIKit;

@interface ITMediator()
@property(strong, nonatomic)ITRouter* router;
@end


@implementation ITMediator

+ (ITMediator *)instance {
    static ITMediator *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }

    return _instance;
}



-(void)show{
    if(!self.router)
        self.router = [ITRouter new];
    
    [self.router presentInterfaceFromWindow:self.window delegate:(id)self];
    
}
@end
