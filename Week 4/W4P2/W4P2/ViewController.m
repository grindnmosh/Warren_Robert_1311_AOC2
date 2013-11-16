//
//  ViewController.m
//  W4P2
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
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil);
    {
        NSString *heroStr = [defaults objectForKey:@"hero"];
        hero.text = heroStr;
    }
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
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        NSString *heroStr = hero.text;
        [defaults setObject:heroStr forKey:@"hero"];
        [defaults synchronize];
    }
}

@end
