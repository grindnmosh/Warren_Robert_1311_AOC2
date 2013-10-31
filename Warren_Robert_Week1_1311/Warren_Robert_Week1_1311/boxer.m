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
        
        [self type:dogType_Boxer color:@"Black" breedName:@"Boxer" total:4 newLitter:5];
        adopted = 1;
        total = 4;
        newLitter = 5;
        result = total - adopted + newLitter;
    }
    return self;
    
}

-(NSString*)printResult
{
    NSLog(@"The total number of %@s are %d plus %d which total %d.", breedName, total, newLitter, result);
    strResult = [NSString stringWithFormat:@"Need Home: %d", result];
    return strResult;
}

@end
