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


// I got it to work Patricia.
-(id)init
{
    if (self != nil)
    {
        //return [[chihuahua alloc ]initWithDetails:dogType_Chihuahua color:@"Brown" breedName:@"Chihuahua" total:12 newLitter:2];
        [self setType:dogType_Chihuahua];
        [self setColor:@"Brown"];
        [self setBreedName:@"Chihuahua"];
        [self setTotal:12];
        [self setNewLitter:2];
    }
    return self;
}

-(int)getDead;
{
    return dead;
}
-(void)setDead:(int)newDead;
{
    dead = newDead;
}

//chihuahua override
-(NSString*)callSuperPrintResult
{
    return [super printResult];
}


-(NSString*)printResult
{
    
    result = total + newLitter - dead;
    strResult = [NSString stringWithFormat:@"Still Living: %d", result];
    return strResult;
}

@end
