//
//  ViewController.h
//  w2p1
//
//  Created by Robert Warren on 11/2/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIImageView *prisoner;
    
    UIImage *guitar;
    UIImage *prisoner1;
    int imageIndex;

}
-(IBAction) onClick:(id)sender;

@end
