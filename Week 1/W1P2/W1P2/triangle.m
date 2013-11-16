//
//  triangle.m
//  W1P2
//
//  Created by Robert Warren on 10/29/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "triangle.h"
#import "shape.h"

@implementation triangle

-(id)init
{
    if (self = [super init])
    {
        [self shapeType:shapeType_Triangle shapeName:@"Triangle" numberOfSides:3];
    }
    return self;
}

@end
