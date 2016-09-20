//
//  ITProductViewController.h
//  Modules Lesson
//
//  Created by Artem Konarev on 19.09.16.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ITProductViewInterfaceIO.h"

@interface ITProductViewController : UIViewController<ITProductViewInterfaceOutput>

@property (nonatomic, strong) id<ITProductViewInterfaceInput> presenter;

-(void)setFrame:(CGRect)frame;

@end
