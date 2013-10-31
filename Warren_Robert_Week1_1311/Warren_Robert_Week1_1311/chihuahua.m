//
//  chihuahua.m
//  Warren_Robert_Week1_1311
//
//  Created by Robert Warren on 10/30/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "chihuahua.h"
#import "dogBase.h"

@implementation chihuahua



-(id)init
{
    if (self = [super init])
    {
        [self type:dogType_Chihuahua color:@"Brown" breedName:@"Chihuahua" total:12 newLitter:2];
        total = 12;
        newLitter = 2;
        dead = 3;
        result = total + newLitter - dead;
    }
    return self;
}



-(NSString*)printResult
{
    strResult = [NSString stringWithFormat:@"Still Living: %d", result];
    return strResult;
}

@end
