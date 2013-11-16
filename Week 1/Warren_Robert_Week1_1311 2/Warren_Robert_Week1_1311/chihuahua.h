//
//  chihuahua.h
//  Warren_Robert_Week1_1311
//
//  Created by Robert Warren on 10/30/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "dogBase.h"

@interface chihuahua : dogBase
{
@protected
    int dead;
}

-(int)getDead;
-(void)setDead:(int)newDead;

-(NSString*)callSuperPrintResult;

@end
