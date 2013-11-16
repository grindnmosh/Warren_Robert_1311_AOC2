//
//  dogBase.m
//  Warren_Robert_Week1_1311
//
//  Created by Robert Warren on 10/30/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "dogBase.h"


@implementation dogBase

// setter/getter
@synthesize type;
@synthesize color;
@synthesize breedName;
@synthesize strResult;
@synthesize total;
@synthesize newLitter;
@synthesize result;

-(id)initWithDetails:(EDogType)dogType color:(NSString*)dogColor breedName:(NSString*)breed total:(int)currentTotal newLitter:(int)litterTotal
{
    if (self = [super init])
    {
        type = dogType;
        color = dogColor;
        breedName = breed;
        total = currentTotal;
        newLitter = litterTotal;
        // calculation
        result = total + newLitter;
    }
    return self;
}

-(void)type:(EDogType)dogType color:(NSString*)color breedName:(NSString*)breedName total:(int)total newLitter:(int)newLitter
{
    
}

// data to be calculated that is overridden anyway
-(int)total:(int)preTotal newLitter:(int)litter
{
    return [[dogBase alloc ]total:16 newLitter:8];
}

// printResult default used by Factory and overridden in SubClasses
-(NSString*)printResult
{
    NSLog(@"The total number of %@s are %d plus %d which total %d.", breedName, total, newLitter, result);
    strResult = [NSString stringWithFormat:@"%d", result];
    return strResult;
}

// printType default used by Factory and overridden in SubClasses
-(NSString*)printType
{
    NSLog(@"There are  %d total %@ not counting the new litter of %d and they are all %@.", total, breedName, newLitter, color);
    return breedName;
}

@end
