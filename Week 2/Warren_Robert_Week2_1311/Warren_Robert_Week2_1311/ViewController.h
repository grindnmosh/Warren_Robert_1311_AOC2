//
//  ViewController.h
//  Warren_Robert_Week2_1311
//
//  Created by Robert Warren on 11/3/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int newValue;
    int value;
    int coreResult;
    NSString *result;
    NSString *breedName;
    IBOutlet UIButton *chiButton;
    IBOutlet UIButton *boxButton;
    IBOutlet UIButton *pooButton;
    IBOutlet UIStepper *adoptControl;
    IBOutlet UITextField *adoptValue;
    IBOutlet UISegmentedControl *segmented;
}

-(IBAction) onClick:(id)sender;
-(IBAction)onChange:(id)sender;

@end
