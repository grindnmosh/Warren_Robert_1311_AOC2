//
//  savingMe.h
//  Warren_Robert_Week4_1311
//
//  Created by Robert Warren on 11/12/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface savingMe : NSObject
{
    NSString *homework;
    NSString *due;
}


@property(nonatomic)NSString *homework;

@property(nonatomic)NSString *due;

+(savingMe *) singleOBJ;

@end
