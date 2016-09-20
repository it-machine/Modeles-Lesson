//
//  ITHeaderPresenter.m
//  Modules Lesson
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITHeaderPresenter.h"

@implementation ITHeaderPresenter{
        NSArray <ITHeaderViewCellModel*>* _arrayItems;
}


#pragma mark - ITHeaderViewInterfaceInput

-(void)viewInit{
    [self.interactor createArrayHeaderViewCellModels];
}

-(void)viewClickItem:(ITHeaderViewCellModel *)item{
    [self.delegate itHeaderSelectedType:item.modelType];
    [self updateSelectedItem:item];
}
#pragma mark -  ITHeaderInteractorInterfaceOutput

-(void)createdArrayHeaderViewCellModels:(NSArray<ITHeaderViewCellModel *> *)array{
    _arrayItems = [NSArray arrayWithArray:array];
    
    [self updateViewForArray:array];
    
    // Выставляем первый элемент
    ITHeaderViewCellModel* model = array[0];
    [self updateSelectedItem:model];
    [self viewClickItem:model];
}

#pragma mark - private

-(void)updateSelectedItem:(ITHeaderViewCellModel*)item{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.userInterface showChangedSeletItem:item];
    });
}

-(void)updateViewForArray:(NSArray<ITHeaderViewCellModel*>*)arrayItems{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.userInterface showHeaderItemsFromArray:arrayItems];
    });
}
@end
