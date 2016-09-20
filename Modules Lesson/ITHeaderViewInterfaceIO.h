//
//  ITHeaderViewInterfaceIO.h
//  Modules Lesson
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ITHeaderViewCellModel;

@protocol ITHeaderViewInterfaceOutput <NSObject>
-(void)showHeaderItemsFromArray:(NSArray<ITHeaderViewCellModel*>*)arrayItems;
-(void)showChangedSeletItem:(ITHeaderViewCellModel*)item;

@end

@protocol ITHeaderViewInterfaceInput <NSObject>

-(void)viewInit;
-(void)viewClickItem:(ITHeaderViewCellModel*)item;

@end
