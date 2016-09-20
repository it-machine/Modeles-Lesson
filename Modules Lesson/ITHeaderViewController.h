//
//  ITHeaderViewController.h
//  Modules Lesson
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ITHeaderViewInterfaceIO.h"

@interface ITHeaderViewController : UIViewController <ITHeaderViewInterfaceOutput>

@property (nonatomic, strong) id<ITHeaderViewInterfaceInput> presenter;

@end
