//
//  ITHeaderViewCell.h
//  Modules Lesson
//
//  Created by Artem Konarev on 19.09.16.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ITHeaderViewCell : UIView
@property (weak, nonatomic) IBOutlet UILabel *customLabel;
@property (weak, nonatomic) IBOutlet UIView *viewSeparator;
@property (weak, nonatomic) IBOutlet UIButton *btnAction;
@end
