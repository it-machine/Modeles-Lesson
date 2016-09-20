//
//  MarksPlaceMarksPlaceViewController.h
//  doytra
//
//  Created by Artem on 07/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ITContactsViewInterfaceIO.h"

@interface ITContactsViewController : UIViewController <ITContactsViewInterfaceOutput>

@property (nonatomic, strong) id<ITContactsViewInterfaceInput> presenter;

-(void)setFrame:(CGRect)frame;

@end
