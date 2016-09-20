//
//  ITProductInteractorInterfaceIO.h
//  Modules Lesson
//
//  Created by Artem Konarev on 19.09.16.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITProductModel.h"

@protocol ITProductInteractorInterfaceInput <NSObject>
-(void)createArrayProductModels;
@end

@protocol ITProductInteractorInterfaceOutput <NSObject>
-(void)createdArrayProductModels:(NSArray<ITProductModel*>*)array;
@end
