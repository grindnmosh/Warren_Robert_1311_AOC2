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

// I got it to work Patricia.
-(id)init
{
    if (self != nil)
    {
        //return [[boxer alloc ]initWithDetails:dogType_Boxer color:@"Black" breedName:@"boxer" total:4 newLitter:5];
        [self setType:dogType_Boxer];
        [self setColor:@"Black"];
        [self setBreedName:@"Boxer"];
        [self setTotal:4];
        [self setNewLitter:5];
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
    result = (total - adopted) + newLitter;
    NSLog(@"The total number of %@s are %d minus %d plus %d which total %d.", breedName, total, adopted, newLitter, result);
    strResult = [NSString stringWithFormat:@"Need Home: %d", result];
    return strResult;
}

@end
