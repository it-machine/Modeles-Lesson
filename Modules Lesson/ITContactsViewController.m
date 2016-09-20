//
//  MarksPlaceMarksPlaceViewController.m
//  doytra
//
//  Created by Artem on 07/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITContactsViewController.h"
#import "ITContactsModel.h"

@interface ITContactsViewController()
@property (weak, nonatomic) IBOutlet UIImageView *contactsImageView;
@property (weak, nonatomic) IBOutlet UILabel *contactsTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contactsAdressLabel;

@end

@implementation ITContactsViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];
    [self.presenter viewInit];
}

-(void)setFrame:(CGRect)frame{
    [self.view setFrame:frame];
    [self.view setNeedsUpdateConstraints];
}

#pragma mark - ITContactsViewInterfaceOutput
-(void)showUpComingAddItems:(ITContactsModel*)item{
    self.contactsImageView.image = item.contactsAvatar;
    self.contactsTitleLabel.text = item.contactsTitle;
    self.contactsAdressLabel.text = item.contactsDescription;
}

-(void)dealloc{
    NSLog(@"died");
}

@end
