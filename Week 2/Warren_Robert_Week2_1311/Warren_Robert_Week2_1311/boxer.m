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
    if (self != nil)
    {
        //return [[boxer alloc ]initWithDetails:dogType_Boxer color:@"Black" breedName:@"boxer" total:4 newLitter:5];
        [self setType:dogType_Boxer];
        [self setColor:@"Black"];
        [self setBreedName:@"Boxer"];
        [self setTotal:12];
        [self setNewLitter:3];
    }
    return self;
}

-(int)getAdopted;
{
    return adopted;
}
-(void)setAdopted:(int)newAdopted;
{
    adopted = newAdopted;
}

//boxer override

-(NSString*)callSuperPrintResult
{
    return [super printResult];
}

-(NSString*)printResult
{
    result = total + newLitter - adopted;
    strResult = [NSString stringWithFormat:@"> %d left", result];
    return strResult;
}

@end
