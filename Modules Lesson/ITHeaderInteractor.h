//
//  ITHeaderInteractor.h
//  doytra
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITHeaderInteractorInterfaceIO.h"



@interface ITHeaderInteractor : NSObject <ITHeaderInteractorInterfaceInput>

@property (nonatomic, weak) id<ITHeaderInteractorInterfaceOutput> presenter;

@end
