//
//  MarksPlaceMarksPlacePresenter.m
//  doytra
//
//  Created by Artem on 07/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITProductPresenter.h"

@implementation ITProductPresenter

#pragma mark - ITProductInteractorInterfaceInput
-(void)viewInit{
    [self.interactor createArrayProductModels];
}

#pragma mark - ITProductInteractorInterfaceOutput
-(void)createdArrayProductModels:(NSArray<ITProductModel*>*)array{
    [self.userInterface showUpComingAddItems:array];
}

@end
