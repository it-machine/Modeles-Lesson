//
//  MarksPlaceMarksPlaceInteractor.h
//  doytra
//
//  Created by Artem on 07/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITContactsInteractorInterfaceIO.h"

@interface ITContactsInteractor : NSObject <ITContactsInteractorInterfaceInput>

@property (nonatomic, weak) id<ITContactsInteractorInterfaceOutput> presenter;

@end
