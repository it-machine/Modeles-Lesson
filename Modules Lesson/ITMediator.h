//
//  ITMediator.h
//  doytra
//
//  Created by Сергей Романков on 26.04.16.
//  Copyright © 2016 Сергей Романков. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ITMediator : NSObject

@property (strong, nonatomic)UIWindow *window;

+ (ITMediator *)instance;
-(void)show;

@end
