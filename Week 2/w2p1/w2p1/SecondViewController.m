//
//  SecondViewController.m
//  w2p1
//
//  Created by Robert Warren on 11/2/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
    int selectedIndex = segmented.selectedSegmentIndex;
    switch1.on = false;
    switch2.on = false;
    switch3.on = false;
    segmented.frame = CGRectMake(segmented.frame.origin.x, segmented.frame.origin.y, segmented.frame.size.width, 15.0f);
    
    segLabel.text = [NSString stringWithFormat:@"Selectd Index = %d", selectedIndex];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClose:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)onChange:(id)sender
{
    if ([sender tag] == 0)
    {
        control = (UIStepper*)sender;
        if (control != nil)
        {
            float value = control.value;
            val.text = [NSString stringWithFormat:@"step value = %.2f", value];
        }
    }
    else if ([sender tag] == 1)
    {
        UISegmentedControl *segCon = (UISegmentedControl*)sender;
        if (segCon != nil)
        {
            int selectedIndex = segCon.selectedSegmentIndex;
            segLabel.text = [NSString stringWithFormat:@"Selected Index = %d", selectedIndex];
        }
    }
}

-(IBAction)onSwitched:(id)sender
{
    UISwitch *switched = (UISwitch*)sender;
    if (switched != nil)
    {
        
    }
}
                
@end
