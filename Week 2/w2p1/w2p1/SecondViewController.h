//
//  SecondViewController.h
//  w2p1
//
//  Created by Robert Warren on 11/2/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
{
    IBOutlet UISwitch *switch1;
    IBOutlet UISwitch *switch2;
    IBOutlet UISwitch *switch3;
    IBOutlet UISegmentedControl *segmented;
    IBOutlet UIStepper *control;
    IBOutlet UILabel *val;
    IBOutlet UILabel *segLabel;
}


-(IBAction)onSwitched:(id)sender;
-(IBAction)onClose:(id)sender;
-(IBAction)onChange:(id)sender;

@end
