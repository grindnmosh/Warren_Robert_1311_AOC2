//
//  dogFactory.m
//  Warren_Robert_Week1_1311
//
//  Created by Robert Warren on 10/30/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "dogFactory.h"
#import "dogBase.h"


@implementation dogFactory

//factory
-(dogBase*)GetDog:(EDogType)type
{
    if (type == dogType_Chihuahua)
    {
        return [[dogBase alloc ]initWithDetails:dogType_Chihuahua color:@"Brown" breedName:@"Chihuahua" total:12 newLitter:2];
    }
    
    if (type == dogType_Boxer)
    {
        return [[dogBase alloc ]initWithDetails:dogType_Boxer color:@"Black" breedName:@"Boxer" total:4 newLitter:5];
    }
    
    if (type == dogType_Poodle)
    {
        return [[dogBase alloc ]initWithDetails:dogType_Chihuahua color:@"White" breedName:@"Poodle" total:9 newLitter:3];
    }
    
    return nil;
}

//static method
+(void)printResult:(int)result
{
    NSLog(@"total before litter = %d", result);
}

@end
