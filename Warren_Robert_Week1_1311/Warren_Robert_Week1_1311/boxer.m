//
//  boxer.m
//  Warren_Robert_Week1_1311
//
//  Created by Robert Warren on 10/30/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "boxer.h"
#import "dogBase.h"

@implementation boxer

-(id)init
{
    if (self = [super init])
    {
        if (self != nil)
        {
            return [[boxer alloc ]initWithDetails:dogType_Boxer color:@"Brown" breedName:@"boxer" total:4 newLitter:5];
        }
    }
    return self;
}

-(NSString*)printResult
{
    adopted = 1;
    result = (total - adopted) + newLitter;
    NSLog(@"The total number of %@s are %d minus %d plus %d which total %d.", breedName, total, adopted, newLitter, result);
    strResult = [NSString stringWithFormat:@"Need Home: %d", result];
    return strResult;
}

@end
