//
//  ITHeaderViewController.m
//  Modules Lesson
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITHeaderViewController.h"
#import "ITHeaderViewCell.h"
#import "ITHeaderViewCellModel.h"

static CGFloat itemIndent = 100.f;

@implementation ITHeaderViewController{
    UIScrollView* _scrollView;
    NSArray<ITHeaderViewCellModel*>* _arrayItems;
    NSArray<ITHeaderViewCell*>* _arrayViews;
}

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.presenter viewInit];
    
    self.view.backgroundColor = [UIColor blackColor];
    _scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    [_scrollView setShowsHorizontalScrollIndicator:NO];
    [_scrollView setShowsVerticalScrollIndicator:NO];
    [self.view addSubview:_scrollView];

}

#pragma mark - MarksHeaderViewInterfaceOutputView <NSObject>
-(void)showHeaderItemsFromArray:(NSArray<ITHeaderViewCellModel *> *)arrayItems{
    _arrayItems = arrayItems;
    [self clearView];
    [self updateItems:arrayItems];
}

-(void)showChangedSeletItem:(ITHeaderViewCellModel*)item{
    [self updateViewSelectItem:item];
}

#pragma mark -
-(void)updateViewSelectItem:(ITHeaderViewCellModel*)item{
    NSInteger index = [_arrayItems indexOfObject:item];
    
    for(int i = 0; i < _arrayViews.count; i++){
        ITHeaderViewCell* itemView =  _arrayViews[i];
        if(i == index)
        {
            itemView.alpha = 1.f;
            itemView.viewSeparator.alpha = 0.3;
        }
        else
        {
            itemView.alpha = 0.3;
        }
    }
}

-(void)clearView{
    [_scrollView removeFromSuperview];
    _scrollView = nil;
    
    _scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    [_scrollView setShowsHorizontalScrollIndicator:NO];
    [_scrollView setShowsVerticalScrollIndicator:NO];
    [self.view addSubview:_scrollView];
}

-(void)updateItems:(NSArray<ITHeaderViewCellModel*>*)arrayItems{
    CGFloat positionX = 0;
    
    NSMutableArray* arrayViews = [NSMutableArray new];
    for(int i = 0; i < arrayItems.count; i++){
        ITHeaderViewCellModel* itemModel = arrayItems[i];
        ITHeaderViewCell* viewBuf = [self createMarksHeaderItem:itemModel.title index:i];
        if (self.view.frame.size.width >= 375) {
            [viewBuf.customLabel setFont:[UIFont systemFontOfSize:15]];
        }
        CGSize textSize = [viewBuf.customLabel intrinsicContentSize];
        [viewBuf setFrame:CGRectMake(positionX, 0, textSize.width + itemIndent, CGRectGetHeight(viewBuf.frame))];
        positionX += textSize.width + itemIndent;
        positionX += 5.f;
        [_scrollView addSubview:viewBuf];
        [arrayViews addObject:viewBuf];
    }
    
    _arrayViews = [NSArray arrayWithArray:arrayViews];
    [_scrollView setContentSize:CGSizeMake(positionX, CGRectGetHeight(self.view.frame))];
}

-(ITHeaderViewCell*)createMarksHeaderItem:(NSString*)title index:(NSInteger)index {
    
    ITHeaderViewCell* item = [[[NSBundle mainBundle] loadNibNamed:@"ITHeaderViewCell" owner:self options:nil] firstObject];
    if (index == 0) {
        [item.viewSeparator setHidden:YES];
    }
    item.customLabel.text = title;
    [item.btnAction addTarget:self action:@selector(onClickItem:) forControlEvents:UIControlEventTouchUpInside];
    item.btnAction.tag = index;
    item.tag = index;
    return item;
}

#pragma mark - action
-(void)onClickItem:(UIButton*)button{
    [self.presenter viewClickItem:_arrayItems[button.tag]];
}

@end
