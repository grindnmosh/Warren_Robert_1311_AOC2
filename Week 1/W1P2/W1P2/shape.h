//
//  shape.h
//  W1P2
//
//  Created by Robert Warren on 10/29/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    shapeType_Triangle=0,
    shapeType_Square
} EShapeType;

@interface shape : NSObject
{
@protected
    EShapeType shapeType;
    NSString *shapeName;
    int numberOfSides;
}

-(void)shapeType:(EShapeType)type shapeName:(NSString*)name numberOfSides:(int)sides;

-(NSString*)printSides;

@end
