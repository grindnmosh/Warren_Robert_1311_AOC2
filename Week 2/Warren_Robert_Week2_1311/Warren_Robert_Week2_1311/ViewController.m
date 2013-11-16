//
//  ViewController.m
//  Warren_Robert_Week2_1311
//
//  Created by Robert Warren on 11/3/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "ViewController.h"
#import "ProjectInfo.h"
#import "dogBase.h"
#import "dogFactory.h"
#import "chihuahua.h"
#import "boxer.h"
#import "poodle.h"

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
//buttons
-(IBAction) onClick:(id)sender
{
    //chihuahua button
    if ([sender tag] == 0)
    {
        adoptControl.value = 1;
        [chiButton setEnabled:NO];
        [boxButton setEnabled:YES];
        [pooButton setEnabled:YES];
        chihuahua *chihua = (chihuahua*)[dogFactory GetDog:dogType_Chihuahua];
        breedName = [chihua breedName];
        adoptValue.text = [NSString stringWithFormat:@"%.0f %@ adopted", adoptControl.value, breedName];
    }
    //boxer button
    else if ([sender tag] == 1)
    {
        adoptControl.value = 1;
        [chiButton setEnabled:YES];
        [boxButton setEnabled:NO];
        [pooButton setEnabled:YES];
        boxer *boxie = (boxer*)[dogFactory GetDog:dogType_Boxer];
        breedName = [boxie breedName];
        adoptValue.text = [NSString stringWithFormat:@"%.0f %@ adopted", adoptControl.value, breedName];
    }
    //poodle button
    else if ([sender tag] == 2)
    {
        adoptControl.value = 1;
        [chiButton setEnabled:YES];
        [boxButton setEnabled:YES];
        [pooButton setEnabled:NO];
        poodle *poos = (poodle*)[dogFactory GetDog:dogType_Poodle];
        breedName = [poos breedName];
        adoptValue.text = [NSString stringWithFormat:@"%.0f %@ adopted", adoptControl.value, breedName];
    }
    //calculation button
    else if ([sender tag] == 3)
    {
        //chihuahua button disabled
        if (chiButton.enabled == NO)
        {
            chihuahua *chihua = (chihuahua*)[dogFactory GetDog:dogType_Chihuahua];
            [chihua setAdopted:adoptControl.value];
            result = [chihua printResult];
            NSLog(@"%@", result);
            adoptValue.text = [NSString stringWithFormat:@"%.f %@ adopted %@", adoptControl.value, breedName, result];
        }
        //boxer button disabled
        else if (boxButton.enabled == NO)
        {
            boxer *boxie = (boxer*)[dogFactory GetDog:dogType_Boxer];
            [boxie setAdopted:adoptControl.value];
            result = [boxie printResult];
            NSLog(@"%@", result);
            adoptValue.text = [NSString stringWithFormat:@"%.f %@ adopted %@", adoptControl.value, breedName, result];
        }
        //poodle button disabled
        else if (pooButton.enabled == NO)
        {
            poodle *poos = (poodle*)[dogFactory GetDog:dogType_Poodle];
            [poos setAdopted:adoptControl.value];
            result = [poos printResult];
            NSLog(@"%@", result);
            adoptValue.text = [NSString stringWithFormat:@"%.f %@ adopted %@", adoptControl.value, breedName, result];
        }
        //no button selected
        else
        {
            adoptValue.text = [NSString stringWithFormat:@"Please pick a breed first"];
        }
    }
    //info button for second view controller
    else if ([sender tag] == 4)
    {
        ProjectInfo *viewController = [[ProjectInfo alloc] initWithNibName:@"ProjectInfo" bundle:nil];
        if (viewController !=nil)
        {
            [self presentViewController:viewController animated:YES completion:nil];
        }
    }
    else
    {
        //Do Nothing
    }
}
//stepper and segmented control
-(IBAction)onChange:(id)sender
{
    //UIStepper
    if ([sender tag] == 0)
    {
        adoptControl = (UIStepper*)sender;
        if (adoptControl != nil)
        {
            value = adoptControl.value;
            adoptValue.text = [NSString stringWithFormat:@"%d %@ adopted", value, breedName];

        }
    }
    //segmented control
    else if ([sender tag] == 1)
    {
        //white option
        if (segmented.selectedSegmentIndex == 0)
        {
            [self.view setBackgroundColor: [UIColor whiteColor]];
        }
        //grey option
        else if (segmented.selectedSegmentIndex == 1)
        {
            [self.view setBackgroundColor: [UIColor lightGrayColor]];
        }
        //yellow option
        else if (segmented.selectedSegmentIndex == 2)
        {
            [self.view setBackgroundColor: [UIColor yellowColor]];
        }
        //purple option
        else if (segmented.selectedSegmentIndex == 3)
        {
            [self.view setBackgroundColor: [UIColor purpleColor]];
        }
    }
}

@end
