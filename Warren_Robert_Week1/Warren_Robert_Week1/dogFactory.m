//
//  dogFactory.m
//  Warren_Robert_Week1_1311
//
//  Created by Robert Warren on 10/30/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "dogFactory.h"
#import "dogBase.h"


@implementation dogFactory

-(dogBase*)GetDog:(EDogType)dogBreed
{
    -(dogBase*)GetDog:(EDogType)dogType;
    {
        if (dogType == dogType_Chihuahua)
        {
            return [[dogBase alloc ]withDetails:dogType_Chihuahua color:@"Brown" breedName:@"Chihuahua" total:12 newLitter:2];
        }
    }
}

-(id)withDetails:(EDogType)dogType color:(NSString*)dogColor breedName:(NSString*)breed total:(int)currentTotal newLitter:(int)litterTotal
{
    
}

@end
