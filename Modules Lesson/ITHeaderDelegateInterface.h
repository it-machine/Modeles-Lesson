//
//  ITHeaderDelegateInterface.h
//  Modules Lesson
//
//  Created by Artem on 05/07/2016.
//  Copyright © 2016 it-machine. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ITHeaderDelegateInterface <NSObject>

@required
-(void)itHeaderSelectedType:(NSNumber*)type;

@end
