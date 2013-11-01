//
//  poodle.m
//  Warren_Robert_Week1_1311
//
//  Created by Robert Warren on 10/30/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "poodle.h"

@implementation poodle

// I got it to work Patricia.
-(id)init
{
    if (self != nil)
    {
        return [[poodle alloc ]initWithDetails:dogType_Poodle color:@"Brown" breedName:@"poodle" total:9 newLitter:3];
    }
    return self;
}

//poodle override
-(NSString*)printResult
{
    haircuts = 7;
    result = total + newLitter - haircuts;
    NSLog(@"The total number of %@s are %d plus %d and %d already had their haircut so %d still need haircuts.", breedName, total, newLitter, haircuts, result);
    strResult = [NSString stringWithFormat:@"Need Haircut: %d", result];
    return strResult;
}

@end
