//
//  ITHeaderInteractorInterfaceIO.h
//  doytra
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITHeaderViewCellModel.h"

@protocol ITHeaderInteractorInterfaceInput <NSObject>
-(void)createArrayHeaderViewCellModels;

@end

@protocol ITHeaderInteractorInterfaceOutput <NSObject>
-(void)createdArrayHeaderViewCellModels:(NSArray<ITHeaderViewCellModel*>*)array;
@end
