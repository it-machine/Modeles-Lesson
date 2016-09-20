//
//  ITProductInteractor.m
//  Modules Lesson
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import "ITProductInteractor.h"
#import "ITProductModel.h"


@implementation ITProductInteractor

-(void)createArrayProductModels{
    NSMutableArray *bufArr = [NSMutableArray new];
    for (int i = 0; i < 2; i ++) {
        ITProductModel *model = [ITProductModel new];
        if (i == 0) {
            model.productImage = [UIImage imageNamed:@"6.jpg"];
            model.productTitle = @"iPhone 6";
        }
        if (i == 1) {
            model.productImage = [UIImage imageNamed:@"6plus.jpg"];
            model.productTitle = @"iPhone 6+";
        }
        [bufArr addObject:model];
    }
    [self.presenter createdArrayProductModels:bufArr];
}

@end
