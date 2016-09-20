//
//  ITProductTableViewCell.h
//  Modules Lesson
//
//  Created by Artem Konarev on 19.09.16.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ITProductModel.h"

@interface ITProductTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellImage;
@property (weak, nonatomic) IBOutlet UILabel *cellLabel;

-(void)setItem:(ITProductModel*)item;

@end
