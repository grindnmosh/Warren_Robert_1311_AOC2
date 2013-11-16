//
//  ViewController.m
//  W1P2
//
//  Created by Robert Warren on 10/29/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "ViewController.h"
#import "shape.h"
#import "triangle.h"
#import "square.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    triangle *tri = [[triangle alloc] init];
    if (tri != nil)
    {
        [tri printSides];
    }
    
    square *squ = [[square alloc] init];
    if (squ != nil)
    {
        
    }[squ printSides];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
