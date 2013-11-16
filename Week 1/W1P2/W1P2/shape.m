//
//  shape.m
//  W1P2
//
//  Created by Robert Warren on 10/29/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "shape.h"

@implementation shape

-(void)shapeType:(EShapeType)type shapeName:(NSString*)name numberOfSides:(int)sides;
{
    shapeType = type;
    shapeName = name;
    numberOfSides = sides;
}

-(NSString*)printSides
{
    NSLog(@"name = %@ and sides = %d", shapeName, numberOfSides);
    return shapeName;
}
@end
