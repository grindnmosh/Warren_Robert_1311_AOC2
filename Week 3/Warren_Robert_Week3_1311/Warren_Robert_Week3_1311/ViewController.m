//
//  ViewController.m
//  Warren_Robert_Week3_1311
//
//  Created by Robert Warren on 11/7/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "ViewController.h"
#import "EventsViewController.h"

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
//display in UITextView
-(void)DidClose:(NSString*)assignmentSaved date:(NSString*)dateString;
{
    //grabbed data from EventsViewController
    entry = [NSString stringWithFormat:@"%@\n%@\n\n\n", assignmentSaved, dateString];
    //if no previous saves
    if ([assignInfo.text  isEqual: @"Assignment information will appear here."])
    {
        //commented out code works as well but thats alot of extra code that is not necessary
        //continuous =[[NSMutableString alloc] init];
        //[continuous appendString:entry];
        //assignInfo.text = continuous;
        assignInfo.text = entry;
    }
    //if previous save data exists
    else
    {
        continuous =[[NSMutableString alloc] init];
        [continuous appendString:assignInfo.text];
        [continuous appendString:entry];
        assignInfo.text = continuous;
    }
    
}
// open scheduler page
-(IBAction)onClick:(id)sender
{
    EventsViewController *events = [[EventsViewController alloc] initWithNibName:@"EventsViewController" bundle:nil];
    if (events != nil)
    {
        events.delegate = self;
        [self presentViewController:events animated:TRUE completion:nil];
    }
}

@end
