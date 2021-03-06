//
//  dogBase.h
//  Warren_Robert_Week1_1311
//
//  Created by Robert Warren on 10/30/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    dogType_Chihuahua=0,
    dogType_Boxer,
    dogType_Poodle
} EDogType;

@interface dogBase : NSObject
{
@public
    EDogType type;
    NSString *color;
    NSString *breedName;
    int total;
    int newLitter;
    int result;
}

-(id)withDetails:(EDogType)dogType color:(NSString*)dogColor breedName:(NSString*)breed total:(int)currentTotal newLitter:(int)litterTotal;

-(void)type:(EDogType)type color:(NSString*)color breedName:(NSString*)breedName total:(int)total newLitter:(int)newLitter;

-(int)total:(int)pretotal newLitter:(int)newLitter;

-(int)printResult;

@end
