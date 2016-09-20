//
//  ITPresenter.m
//  Modules Lesson
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITPresenter.h"

@implementation ITPresenter

#pragma mark - ITHeaderDelegateInterface
-(void)itHeaderSelectedType:(NSNumber*)type{
    self.type = type;
    [self.router changeType:[type integerValue]];
}

@end
