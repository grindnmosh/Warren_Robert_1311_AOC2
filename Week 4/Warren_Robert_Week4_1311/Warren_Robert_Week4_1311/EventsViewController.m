//
//  EventsViewController.m
//  Warren_Robert_Week3_1311
//
//  Created by Robert Warren on 11/7/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "EventsViewController.h"
#import "ViewController.h"
#import "savingMe.h"

@interface EventsViewController ()

@end

@implementation EventsViewController

//@synthesize delegate;
@synthesize minimumDate;
@synthesize assignment;
@synthesize doIt;


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
    //singleton calls
    optSingleton = [savingMe singleOBJ];
    //swipe gesture
    leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [swiper addGestureRecognizer:leftSwipe];
    
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

-(void)onSwipe:(UISwipeGestureRecognizer*)recognized
{
    if([assignment.text  isEqual: @"Enter Assignment Here"])
    {
        //pop up alert about missing info
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Missing Information!" message:@"Please Enter Assignment" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
    else if ([assignment.text  isEqual: @""])
    {
        //pop up alert about missing info
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Missing Information!" message:@"Please Enter Assignment" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
    else
    {
        //grab date
        date = datePicker.date;
        //format date on unchanged UIDatePicker
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"EEEE, MMMM dd, yyyy hh:mm a zzz"];
        dateString = [dateFormatter stringFromDate:date];
        //return date
        optSingleton.due = [NSString stringWithFormat:@"Due Date: %@", dateString];
        //return assignment name
        reqAssign = assignment.text;
        optSingleton.homework = [NSString stringWithFormat:@"Assignment: %@", reqAssign];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) onClick:(id)sender
{
    [assignment resignFirstResponder];
}

// default timezone
+ (void)setDefaultTimeZone:(NSTimeZone *)aTimeZone
{
    [NSTimeZone localTimeZone];
}

//records the changes in the UIDatePicker
-(IBAction)onChange:(id)sender
{
    //minimum date
    datePicker.minimumDate = [[ NSDate alloc ] initWithTimeIntervalSinceNow: (NSTimeInterval) 0 ];
    
}




@end
