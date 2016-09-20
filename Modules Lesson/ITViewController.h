//
//  ITViewController.h
//  Modules Lesson
//
//  Created by Artem Konarev on 17.09.16.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ITViewContorellerInterfaceIO.h"

@interface ITViewController : UIViewController <ITViewInterfaceOutput>

@property (nonatomic, strong) id<ITViewInterfaceInput> presenter;

@property(weak, nonatomic)UIView* headerContainer;
@property(weak, nonatomic)UIView* bodyContainer;

@end

