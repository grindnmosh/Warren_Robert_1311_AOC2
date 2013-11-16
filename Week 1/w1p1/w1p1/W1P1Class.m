//
//  W1P1Class.m
//  w1p1
//
//  Created by Robert Warren on 10/29/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "W1P1Class.h"

@interface W1P1Class ()
-(NSInteger)addScores:(NSInteger)one two:(NSInteger)two three:(NSInteger)three;
-(NSInteger)avgScore:(NSInteger)one two:(NSInteger)two three:(NSInteger)three;
@end

@implementation W1P1Class

@synthesize score;
@synthesize inTen;
@synthesize playAgain;

-(id)init
{
    if (self = [super init])
    {
        score = 100;
        inTen = 7.2f;
        playAgain = YES;
    }
    return self;
}
-(NSInteger)addScores:(NSInteger)one two:(NSInteger)two three:(NSInteger)three
{
    return one + two + three;
}

-(NSInteger)avgScore:(NSInteger)one two:(NSInteger)two three:(NSInteger)three;
{
    return (one + two + three) / 3;
}
    
@end
