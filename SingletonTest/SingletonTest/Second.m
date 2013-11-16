//
//  Second.m
//  SingletonTest
//
//  Created by Robert Warren on 11/12/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "Second.h"

@implementation Second

static Second *_instance = nil;


+(void)CreateInstance
{
    if (_instance == nil)
    {
        _instance = [[self alloc] init];
    }
}

+(Second*)GetInstance
{
    return _instance;
}


-(id)init
{
    if (self = [super init])
    {

    }
    return self;
}

-(void)printSettings
{
    NSLog(@"screenwdth=%d, screenheight=%d", 320, 240);
}

@end
