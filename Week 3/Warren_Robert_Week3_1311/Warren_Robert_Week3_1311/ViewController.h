//
//  ViewController.h
//  Warren_Robert_Week3_1311
//
//  Created by Robert Warren on 11/7/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventsViewController.h"

@interface ViewController : UIViewController <EventsViewControllerDelegate>
{
    NSMutableString *continuous;
    NSString *entry;
    NSString *previousData;
    IBOutlet UITextView *assignInfo;
}

-(IBAction)onClick:(id)sender;

@end
