//
//  ITInteractor.h
//  Modules Lesson
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITInteractorInterfaceIO.h"

@interface ITInteractor : NSObject <ITInteractorInterfaceInput>

@property (nonatomic, weak) id<ITInteractorInterfaceOutput> presenter;

@end
