//
//  ITProductTableViewCell.m
//  Modules Lesson
//
//  Created by Artem Konarev on 19.09.16.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITProductTableViewCell.h"

@implementation ITProductTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setItem:(ITProductModel *)item{
    self.cellImage.image = item.productImage;
    self.cellLabel.text = item.productTitle;
}

@end
