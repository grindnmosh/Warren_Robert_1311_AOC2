//
//  ViewController.m
//  Week4Practice
//
//  Created by Robert Warren on 11/11/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    isOpen = false;
    ogTopFrame = top.frame;
    leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [swiper addGestureRecognizer:leftSwipe];
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [swiper addGestureRecognizer:rightSwipe];
    tapper = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap:)];
    if (tapper!=nil)
    {
        tapper.numberOfTapsRequired = 2;
        [tappy addGestureRecognizer:tapper];
        
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognized
{
    if (recognized.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        swiper.text = @"Swiped Left";
    }
    else if (recognized.direction == UISwipeGestureRecognizerDirectionRight)
    {
        swiper.text = @"Swiped Right";
    }
}

-(void)onTap:(UITapGestureRecognizer*)tapThat
{
    tappy.text = @"Stop Clicking Me Jerk!";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    if ([sender tag] == 0)
    {
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1.0f];
        if (!isOpen) {
            top.frame = CGRectMake(220.0f, 0.0f, top.frame.size.width, top.frame.size.height);
            isOpen = true;
        }
        else
        {
            top.frame = ogTopFrame;
            isOpen = false;
        }
    
        [UIView commitAnimations];
    }
    else if ([sender tag] == 1)
    {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        if (defaults != nil)
        {
            NSString *heroStr = hero.text;
            [defaults setObject:heroStr forKey:@"hero"];
            [defaults synchronize];
        }
    }
    else
    {
        
    }
}

@end
