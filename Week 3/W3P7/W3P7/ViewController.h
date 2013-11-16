//
//  ViewController.h
//  W3P7
//
//  Created by Robert Warren on 11/6/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
{
    IBOutlet UIPickerView *pickMe;
}

-(IBAction)onClick:(id)sender;
-(IBAction)onChange:(id)sender;

@end
