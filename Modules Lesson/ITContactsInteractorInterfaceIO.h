//
//  MarksPlaceMarksPlaceInteractorInterfaceIO.h
//  doytra
//
//  Created by Artem on 07/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ITContactsModel;

@protocol ITContactsInteractorInterfaceInput <NSObject>
-(void)createContactModel;
@end

@protocol ITContactsInteractorInterfaceOutput <NSObject>
-(void)createdContactModel:(ITContactsModel*)model;
@end
