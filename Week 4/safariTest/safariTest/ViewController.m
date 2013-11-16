//
//  ViewController.m
//  safariTest
//
//  Created by Robert Warren on 11/12/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    NSURL *grindDesign = [NSURL URLWithString:@"http://grind-design.com"];
    if (grindDesign != nil)
    {
        [[UIApplication sharedApplication] openURL:grindDesign];
    }
}

@end
