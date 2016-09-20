//
//  ITProductInteractor.h
//  Modules Lesson
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITProductInteractorInterfaceIO.h"

@interface ITProductInteractor : NSObject <ITProductInteractorInterfaceInput>

@property (nonatomic, weak) id<ITProductInteractorInterfaceOutput> presenter;

@end
