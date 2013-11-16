//
//  Second.h
//  SingletonTest
//
//  Created by Robert Warren on 11/12/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Second : NSObject
{
    

}
+(void)CreateInstance;

+(Second*)GetInstance;

-(void)printSettings;

@end
