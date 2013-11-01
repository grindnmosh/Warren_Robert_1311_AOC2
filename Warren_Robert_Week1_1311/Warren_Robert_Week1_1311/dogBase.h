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
@protected
    EDogType type;
    NSString *color;
    NSString *breedName;
    NSString *strResult;
    int total;
    int newLitter;
    int result;
}

// setter/getter
@property  EDogType type;
@property NSString *color;
@property NSString *breedName;
@property NSString *strResult;
@property int total;
@property int newLitter;
@property int result;

-(id)initWithDetails:(EDogType)dogType color:(NSString*)dogColor breedName:(NSString*)breed total:(int)currentTotal newLitter:(int)litterTotal;

-(void)type:(EDogType)type color:(NSString*)color breedName:(NSString*)breedName total:(int)total newLitter:(int)newLitter;

-(int)total:(int)pretotal newLitter:(int)newLitter;

-(NSString*)printType;

-(NSString*)printResult;

@end
