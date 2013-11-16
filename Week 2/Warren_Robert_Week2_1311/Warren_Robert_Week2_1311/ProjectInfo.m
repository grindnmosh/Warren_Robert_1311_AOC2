//
//  ProjectInfo.m
//  Warren_Robert_Week2_1311
//
//  Created by Robert Warren on 11/4/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "ProjectInfo.h"

@interface ProjectInfo ()

@end

@implementation ProjectInfo

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClose:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
