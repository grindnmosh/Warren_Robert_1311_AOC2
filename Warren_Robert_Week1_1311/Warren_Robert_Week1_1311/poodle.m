//
//  poodle.m
//  Warren_Robert_Week1_1311
//
//  Created by Robert Warren on 10/30/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "poodle.h"

@implementation poodle

-(id)init
{
    if (self = [super init])
    {
        
        [self type:dogType_Chihuahua color:@"White" breedName:@"Poodle" total:9 newLitter:3];
        total = 9;
        newLitter = 3;
        haircuts = 7;
        result = total + newLitter - haircuts;
    }
    return self;
}

-(NSString*)printResult
{
    NSLog(@"The total number of %@s are %d plus %d which total %d.", breedName, total, newLitter, result);
    strResult = [NSString stringWithFormat:@"Need Haircut: %d", result];
    return strResult;
}

@end
