//
//  ViewController.m
//  SingletonTest
//
//  Created by Robert Warren on 11/12/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "ViewController.h"
#import "Second.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [Second CreateInstance];
    [[Second GetInstance] printSettings];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
