//
//  ViewController.h
//  Week4Practice
//
//  Created by Robert Warren on 11/11/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIView *top;
    IBOutlet UIView *bottom;
    IBOutlet UIButton *button;
    IBOutlet UILabel *swiper;
    IBOutlet UILabel *tappy;
    IBOutlet UITextField *hero;
    CGRect ogTopFrame;
    bool isOpen;
    UISwipeGestureRecognizer *leftSwipe;
    UISwipeGestureRecognizer *rightSwipe;
    UITapGestureRecognizer *tapper;
    
}

-(IBAction)onClick:(id)sender;
@end
