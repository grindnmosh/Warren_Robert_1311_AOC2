//
//  ViewController.m
//  w1p1
//
//  Created by Robert Warren on 10/29/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "ViewController.h"
#import "W1P1Class.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    W1P1Class *w1p1 = [[W1P1Class alloc] init];
    if (w1p1 != nil)
    {
        NSInteger result = [w1p1 addScores:87 two:97 three:91];
        NSLog(@"result = %d", result);
        NSInteger average = [w1p1 avgScore:87 two:97 three:91];
        NSLog(@"result = %d", average);

        w1p1.score = 56;
        w1p1.inTen = 5.8;
        w1p1.playAgain = NO;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
