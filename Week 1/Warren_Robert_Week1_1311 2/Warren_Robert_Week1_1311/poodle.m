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
        //return [[poodle alloc ]initWithDetails:dogType_Poodle color:@"Brown" [self setType:dogType_Chihuahua:@"poodle" total:9 newLitter:3];
        [self setType:dogType_Poodle];
        [self setColor:@"White"];
        [self setBreedName:@"Poodle"];
        [self setTotal:9];
        [self setNewLitter:3];
    }
    return self;
}

-(int)getHaircuts;
{
    return haircuts;
}
-(void)setHaircuts:(int)newHaircuts;
{
    haircuts = newHaircuts;
}

//poodle override
-(NSString*)callSuperPrintResult
{
    return [super printResult];
}

-(NSString*)printResult
{
    result = total + newLitter - haircuts;
    NSLog(@"The total number of %@s are %d plus %d and %d already had their haircut so %d still need haircuts.", breedName, total, newLitter, haircuts, result);
    strResult = [NSString stringWithFormat:@"Need Haircut: %d", result];
    return strResult;
}

@end
