//
//  dogFactory.h
//  Warren_Robert_Week1_1311
//
//  Created by Robert Warren on 10/30/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "dogBase.h"

@interface dogFactory : NSObject

+(dogBase*)GetDog:(EDogType)dogType;

+(void)printResult:(int)result;

@end
