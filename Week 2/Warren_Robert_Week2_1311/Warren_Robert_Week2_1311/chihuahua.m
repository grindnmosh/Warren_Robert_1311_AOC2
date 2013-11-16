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
    if (self != nil)
    {
        //return [[chihuahua alloc ]initWithDetails:dogType_Chihuahua color:@"Brown" breedName:@"Chihuahua" total:12 newLitter:2];
        [self setType:dogType_Chihuahua];
        [self setColor:@"Brown"];
        [self setBreedName:@"Chihuahua"];
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

//chihuahua override
-(NSString*)callSuperPrintResult
{
    return [super printResult];
}

-(NSString*)printResult
{
    result = (total + newLitter) - adopted;
    strResult = [NSString stringWithFormat:@"> %d left", result];
    return strResult;
}

@end
