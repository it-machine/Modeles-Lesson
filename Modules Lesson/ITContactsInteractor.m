//
//  MarksPlaceMarksPlaceInteractor.m
//  doytra
//
//  Created by Artem on 07/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITContactsInteractor.h"
#import "ITContactsModel.h"

@implementation ITContactsInteractor
-(void)createContactModel{
    ITContactsModel *model = [ITContactsModel new];
    model.contactsAvatar = [UIImage imageNamed:@"restore.jpg"];
    model.contactsTitle = @"Наш магазин";
    model.contactsDescription = @"пр. Обуховской обороны, 15";
    
    [self.presenter createdContactModel:model];
}
@end
