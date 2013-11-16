//
//  savingMe.m
//  Warren_Robert_Week4_1311
//
//  Created by Robert Warren on 11/12/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "savingMe.h"

@implementation savingMe
{
    savingMe *anotherAssignment;
}

//singleton vars
@synthesize homework;

@synthesize due;

//singleton static method
+(savingMe*)singleOBJ
{
    static savingMe *singleton = nil;
    @synchronized(self)
    {
        if (!singleton)
        {
            singleton = [[savingMe alloc] init];
        }
        return singleton;
    }
    
}

@end
