//
//  ViewController.m
//  w2p1
//
//  Created by Robert Warren on 11/2/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


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

-(IBAction) onClick:(id)sender
{
    guitar = [UIImage imageNamed:@"Linux-guitar.jpg"];
    prisoner1 = [UIImage imageNamed:@"f712_7.jpg"];
    if ([sender tag] == 0)
    {
        SecondViewController *viewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
        if (viewController !=nil)
        {
            [self presentViewController:viewController animated:YES completion:nil];
        }
    }
    else if ([sender tag] == 1)
    {
        if (imageIndex == 0)
        {
            prisoner.image = guitar;
            imageIndex++;
        }
        else
        {
            prisoner.image = prisoner1;
            imageIndex--;
        }
    }
    else
    {
        //Do Nothing
    }
}



@end
