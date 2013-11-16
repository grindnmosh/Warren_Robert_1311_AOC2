//
//  EventsViewController.h
//  Warren_Robert_Week3_1311
//
//  Created by Robert Warren on 11/7/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import <UIKit/UIKit.h>
//custom delegate
@protocol EventsViewControllerDelegate <NSObject>

@required
-(void)DidClose:(NSString*)assignmentSaved date:(NSString*)dateString;

@end

@interface EventsViewController : UIViewController <UITextFieldDelegate>
{
    id<EventsViewControllerDelegate> delegate;
    NSDate *date;
    NSString *doIt;
    NSString *reqAssign;
    NSString *dateString;
    NSString *homework;
    IBOutlet UIButton *saveMe;
    IBOutlet UITextField *assignment;
    IBOutlet UIDatePicker *datePicker;
}
//default timezone
+(void)setDefaultTimeZone:(NSTimeZone *)aTimeZone;

//minimum date property
@property (nonatomic, retain) NSDate *minimumDate;

//delegate property
@property (strong) id<EventsViewControllerDelegate> delegate;

@end
