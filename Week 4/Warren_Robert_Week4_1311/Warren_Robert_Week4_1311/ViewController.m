//
//  ViewController.m
//  Warren_Robert_Week3_1311
//
//  Created by Robert Warren on 11/7/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "ViewController.h"
#import "EventsViewController.h"
#import "savingMe.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //singleton call
    optSingleton = [savingMe singleOBJ];
    
    //check for previos data
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil);
    {
        savedAssignments = [defaults objectForKey:@"filed"];
        assignInfo.text = savedAssignments;
    }
    
    //swipe gesture
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [swiper addGestureRecognizer:rightSwipe];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    //singleton data from EventsViewController
    NSString *homework = [optSingleton homework];
    NSString *due = [optSingleton due];
    entry = [NSString stringWithFormat:@"%@\n%@\n\n\n", homework, due];
    
    //no previously saved assignments
    if (savedAssignments == nil)
    {
        if (homework == nil)
        {
            assignInfo.text = [NSString stringWithFormat:@"Assignment Info will appear here"];
        }
        else
        {
            //if no previous saves
            if ([assignInfo.text  isEqual: @"Assignment Info will appear here"])
            {
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
    }
    //previously saved assignments
    else if (savedAssignments != nil)
    {
        if (homework == nil) {
            
        }
        else if ([assignInfo.text  isEqual: @"Assignment Info will appear here"])
        {
            //first assignment
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
}

        
        
    


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//display in UITextView
/*-(void)DidClose:(NSString*)assignmentSaved date:(NSString*)dateString
{
    NSString *homework = optSingleton.homework;
    NSString *due = optSingleton.due;
    NSLog(@"%@", homework);
    NSLog(@"%@", due);
    //grabbed data from EventsViewController
    entry = [NSString stringWithFormat:@"%@\n%@\n\n\n", homework, due];
    //if no previous saves
    if ([assignInfo.text  isEqual: nil])
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
    
}*/

-(void)onSwipe:(UISwipeGestureRecognizer*)recognized
{
    EventsViewController *events = [[EventsViewController alloc] initWithNibName:@"EventsViewController" bundle:nil];
    if (events != nil)
    {
        //events.delegate = self;
        [self presentViewController:events animated:TRUE completion:nil];
    }
}

// open scheduler page
-(IBAction)onClick:(id)sender
{
    if ([sender tag] == 0)
    {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        if (defaults != nil)
        {
            savedAssignments = assignInfo.text;
            [defaults setObject:savedAssignments forKey:@"filed"];
            [defaults synchronize];
        }
    }
    else if ([sender tag] == 1)
    {
        NSURL *grindDesign = [NSURL URLWithString:@"http://grind-design.com"];
        if (grindDesign != nil)
        {
            [[UIApplication sharedApplication] openURL:grindDesign];
        }
    }
    
}

@end
