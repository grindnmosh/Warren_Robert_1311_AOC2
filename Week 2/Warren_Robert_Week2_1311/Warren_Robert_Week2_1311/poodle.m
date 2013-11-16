//
//  poodle.m
//  Warren_Robert_Week1_1311
//
//  Created by Robert Warren on 10/30/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "poodle.h"
#import "dogbase.h"

@implementation poodle

-(id)init
{
    if (self != nil)
    {
        //return [[poodle alloc ]initWithDetails:dogType_Poodle color:@"Brown" breedName:@"poodle" total:9 newLitter:3];
        [self setType:dogType_Poodle];
        [self setColor:@"White"];
        [self setBreedName:@"Poodle"];
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

//poodle override
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
