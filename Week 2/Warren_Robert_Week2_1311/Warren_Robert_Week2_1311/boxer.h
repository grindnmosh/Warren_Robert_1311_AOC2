//
//  boxer.h
//  Warren_Robert_Week1_1311
//
//  Created by Robert Warren on 10/30/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "dogBase.h"

@interface boxer : dogBase
{
@protected
    int adopted;
}

-(int)getAdopted;
-(void)setAdopted:(int)newAdopted;

-(NSString*)callSuperPrintResult;

@end
