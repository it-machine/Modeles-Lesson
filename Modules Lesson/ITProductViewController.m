//
//  ITProductViewController.m
//  Modules Lesson
//
//  Created by Artem Konarev on 19.09.16.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITProductViewController.h"
#import "ITProductModel.h"
#import "ITProductTableViewCell.h"

@interface ITProductViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *arrItems;
@end

@implementation ITProductViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self tableConfig];
    [self.presenter viewInit];
}

-(void)setFrame:(CGRect)frame{
    [self.view setFrame:frame];
    [self.view setNeedsUpdateConstraints];
}

-(void)tableConfig{
    self.arrItems = [NSMutableArray new];
    [self.tableView registerNib:[UINib nibWithNibName:@"ITProductTableViewCell" bundle:nil] forCellReuseIdentifier:@"ITProductTableViewCell"];
    self.tableView.tableFooterView = [UIView new];
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arrItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ITProductTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ITProductTableViewCell"];
    [cell setItem:self.arrItems[indexPath.row]];
    
    return cell;
}

#pragma mark - ITProductViewInterfaceOutput
-(void)showUpComingAddItems:(NSArray<ITProductModel*>*)arrayItems{
    [self.arrItems addObjectsFromArray:arrayItems];
    [self.tableView reloadData];
}
@end
