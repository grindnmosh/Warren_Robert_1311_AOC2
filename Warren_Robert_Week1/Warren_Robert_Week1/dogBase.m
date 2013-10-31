//
//  dogBase.m
//  Warren_Robert_Week1_1311
//
//  Created by Robert Warren on 10/30/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "dogBase.h"


@implementation dogBase

-(id)withDetails:(EDogType)dogType color:(NSString*)dogColor breedName:(NSString*)breed total:(int)currentTotal newLitter:(int)litterTotal
{
    if (self = [super init])
    {
        type = dogType;
        color = dogColor;
        breedName = breed;
        total = currentTotal;
        newLitter = litterTotal;
    }
    return self;
}

-(void)type:(EDogType)dogType color:(NSString*)color breedName:(NSString*)breedName total:(int)total newLitter:(int)newLitter
{
    
}

-(int)total:(int)preTotal newLitter:(int)litter
{
    preTotal = 16;
    litter = 6;
    result = preTotal + litter;
    return result;
}

-(int)printResult;
{
    NSLog(@"There are now %d total %u", result, type);
    return result;
}

@end
