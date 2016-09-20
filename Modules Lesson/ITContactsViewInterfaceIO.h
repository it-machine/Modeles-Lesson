//
//  MarksPlaceMarksPlaceViewInterfaceIO.h
//  doytra
//
//  Created by Artem on 07/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ITContactsModel;

@protocol ITContactsViewInterfaceOutput <NSObject>
-(void)showUpComingAddItems:(ITContactsModel*)item;
@end

@protocol ITContactsViewInterfaceInput <NSObject>
-(void)viewInit;
@end
