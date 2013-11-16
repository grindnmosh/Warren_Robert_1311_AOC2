//
//  ViewController.m
//  W3P7
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
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString *instant = [NSString stringWithFormat:@"col=%ld. row=%ld", (long)component, (long)row];
    NSLog(@"%@", instant);
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString *testStr = [NSString stringWithFormat:@"col=%ld, row=%ld", (long)component, (long)row];
    return testStr;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 3;
}

-(IBAction)onClick:(id)sender
{
    NSInteger col1Select = [pickMe selectedRowInComponent:0];
    NSInteger col2Select = [pickMe selectedRowInComponent:1];
    NSLog(@"col1Row=%ld, col2Row=%ld", (long)col1Select, (long)col2Select);
}

-(IBAction)onChange:(id)sender
{
    UIDatePicker *dater = (UIDatePicker*)sender;
    if (dater != nil)
    {
        NSDate *capDate = dater.date;
        NSLog(@"date: %@", capDate);
    }
}

@end
