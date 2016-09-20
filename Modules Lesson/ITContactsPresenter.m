//
//  MarksPlaceMarksPlacePresenter.m
//  doytra
//
//  Created by Artem on 07/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITContactsPresenter.h"

@implementation ITContactsPresenter

#pragma mark - ITContactsViewInterfaceInput
-(void)viewInit{
    [self.interactor createContactModel];
}

#pragma mark - ITContactsViewInterfaceOutput
-(void)createdContactModel:(ITContactsModel *)model{
    [self.userInterface showUpComingAddItems:model];
}
@end
