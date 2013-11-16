//
//  dogFactory.m
//  Warren_Robert_Week1_1311
//
//  Created by Robert Warren on 10/30/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "dogFactory.h"
#import "dogBase.h"
#import "chihuahua.h"
#import "boxer.h"
#import "poodle.h"

@implementation dogFactory

//factory
+(dogBase*)GetDog:(EDogType)type
{
    if (type == dogType_Chihuahua)
    {
        return [[chihuahua alloc ]initWithDetails:dogType_Chihuahua color:@"Brown" breedName:@"Chihuahua" total:12 newLitter:3];
    }
    
    if (type == dogType_Boxer)
    {
        return [[boxer alloc ]initWithDetails:dogType_Boxer color:@"Black" breedName:@"Boxer" total:12 newLitter:3];
    }
    
    if (type == dogType_Poodle)
    {
        return [[poodle alloc ]initWithDetails:dogType_Chihuahua color:@"White" breedName:@"Poodle" total:12 newLitter:3];
    }
    
    return nil;
}

@end
