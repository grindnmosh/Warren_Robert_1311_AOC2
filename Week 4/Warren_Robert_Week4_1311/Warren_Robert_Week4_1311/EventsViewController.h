//
//  EventsViewController.h
//  Warren_Robert_Week3_1311
//
//  Created by Robert Warren on 11/7/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "savingMe.h"


@interface EventsViewController : UIViewController <UITextFieldDelegate>
{
    savingMe *optSingleton;
    NSDate *date;
    NSString *doIt;
    NSString *reqAssign;
    NSString *dateString;
    NSString *homework;
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UILabel *swiper;
    IBOutlet UITextField *assignment;
    UISwipeGestureRecognizer *leftSwipe;
    

}
//default timezone
+(void)setDefaultTimeZone:(NSTimeZone *)aTimeZone;

//minimum date property
@property (nonatomic, retain) NSDate *minimumDate;


@property (nonatomic, retain) UITextField *assignment;
@property (nonatomic, retain) NSString *doIt;

-(void)onSwipe:(UISwipeGestureRecognizer*)recognized;

@end
