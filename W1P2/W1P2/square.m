//
//  square.m
//  W1P2
//
//  Created by Robert Warren on 10/29/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "square.h"

@implementation square

-(id)init
{
    if (self = [super init])
    {
        [self shapeType:shapeType_Square shapeName:@"Square" numberOfSides:4];
    }
    return self;
}

@end
