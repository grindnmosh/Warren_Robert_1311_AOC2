//
//  ViewController.m
//  W3P9
//
//  Created by Robert Warren on 11/6/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    prisoner = [UIImage imageNamed:@"2013-10-02 09.56.17.jpg"];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    CGRect img = CGRectMake(0.0f, 0.0f, prisoner.size.width, prisoner.size.height);
    image.frame =img;
    image.image = prisoner;
    scroller.contentSize = CGSizeMake(prisoner.size.width, prisoner.size.height);
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
