//
//  ViewController.h
//  Warren_Robert_Week3_1311
//
//  Created by Robert Warren on 11/7/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventsViewController.h"
#import "savingMe.h"

@interface ViewController : UIViewController 
{
    IBOutlet UIButton *saveMe;
    savingMe *optSingleton;
    NSString *savedAssignments;
    NSMutableString *continuous;
    NSString *entry;
    NSString *previousData;
    IBOutlet UITextView *assignInfo;
    IBOutlet UILabel *swiper;
    UISwipeGestureRecognizer *rightSwipe;
}

-(IBAction)onClick:(id)sender;
-(void)onSwipe:(UISwipeGestureRecognizer*)recognized;

@end
