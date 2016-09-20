//
//  ITProductViewInterfaceIO.h
//  Modules Lesson
//
//  Created by Artem Konarev on 19.09.16.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ITProductModel;

@protocol ITProductViewInterfaceOutput <NSObject>
-(void)showUpComingAddItems:(NSArray<ITProductModel*>*)arrayItems;

@end

@protocol ITProductViewInterfaceInput <NSObject>
-(void)viewInit;
@end

