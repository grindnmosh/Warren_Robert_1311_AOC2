//
//  W1P1Class.h
//  w1p1
//
//  Created by Robert Warren on 10/29/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface W1P1Class : NSObject
{
@private
    
    int score;
    float inTen;
    bool playAgain;
}


@property int score;
@property float inTen;
@property bool playAgain;

-(NSInteger)addScores:(NSInteger)one two:(NSInteger)two three:(NSInteger)three;
-(NSInteger)avgScore:(NSInteger)one two:(NSInteger)two three:(NSInteger)three;

@end
