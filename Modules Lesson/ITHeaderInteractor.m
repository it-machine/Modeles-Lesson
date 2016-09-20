//
//  ITHeaderInteractor.m
//  Modules Lesson
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITHeaderInteractor.h"

@implementation ITHeaderInteractor

-(void)createArrayHeaderViewCellModels{
    NSArray *arrayModels = @[@"Товар", @"Контакты"];
    NSMutableArray *bufArray = [NSMutableArray new];
    
    for (int i=0; i<arrayModels.count; i++) {
        ITHeaderViewCellModel *model = [ITHeaderViewCellModel new];
        
        model.title = arrayModels[i];
        model.modelType = [NSNumber numberWithInt:i];
        [bufArray addObject:model];
    }
    [self.presenter createdArrayHeaderViewCellModels:bufArray];
}

@end
