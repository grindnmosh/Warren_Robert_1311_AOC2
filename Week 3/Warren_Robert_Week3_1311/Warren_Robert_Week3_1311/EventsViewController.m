//
//  EventsViewController.m
//  Warren_Robert_Week3_1311
//
//  Created by Robert Warren on 11/7/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "EventsViewController.h"
#import "ViewController.h"

@interface EventsViewController ()

@end

@implementation EventsViewController

@synthesize delegate;
@synthesize minimumDate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    //keyboard notifications
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
//keyboard methods
-(void)keyboardWillShow:(NSNotification*)notification
{
    
}

//keyboard methods
-(void)keyboardWillHide:(NSNotification*)notification
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) onClick:(id)sender
{
    //save button
    if ([sender tag] == 0)
    {
        date = datePicker.date;
        //format date on unchanged UIDatePicker
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"EEEE, MMMM dd, yyyy hh:mm a zzz"];
        dateString = [dateFormatter stringFromDate:date];
        //return date
        doIt = [NSString stringWithFormat:@"Due Date: %@", dateString];
        if ([assignment.text  isEqual: @""])
        {
            homework = @"Assignment: No Assignment Entered";
            
        }
        else if ([assignment.text  isEqual: @"Enter Assignment Here"])
        {
            homework = @"Assignment: No Assignment Entered";
        }
        else
        {
            reqAssign = assignment.text;
            homework = [NSString stringWithFormat:@"Assignment: %@", reqAssign];
        }
        
        if (delegate != nil)
        {
            [delegate DidClose:homework date:doIt];
            
        }
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    //close keyboard
    else if ([sender tag] == 1)
    {
        [assignment resignFirstResponder];
    }
    else
    {
        //Do Nothing
    }
}
// default timezone
+ (void)setDefaultTimeZone:(NSTimeZone *)aTimeZone
{
    [NSTimeZone localTimeZone];
}

// to close data entry page if you decide on no changes
-(IBAction)onClose:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

//records the changes in the UIDatePicker
-(IBAction)onChange:(id)sender
{
    //minimum date
    datePicker.minimumDate = [[ NSDate alloc ] initWithTimeIntervalSinceNow: (NSTimeInterval) 0 ];
    
}




@end
