//
//  ViewController.m
//  Warren_Robert_Week1_1311
//
//  Created by Robert Warren on 10/30/13.
//  Copyright (c) 2013 Robert Warren. All rights reserved.
//

#import "ViewController.h"
#import "dogBase.h"
#import "dogFactory.h"
#import "chihuahua.h"
#import "boxer.h"
#import "poodle.h"


// I wasnt sure which calculation you wanted so I called the factory and the subclass overrides with the altered calculations.
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [self.view setBackgroundColor: [UIColor lightGrayColor]];
    
    //static call from Factory
    [dogFactory printResult:15];

    // chihuahua class override
    chihuahua *chisur = [[chihuahua alloc] init];
    if (chisur != nil)
    {
        [chisur printResult];
    }
    
    // boxer class override
    boxer *boxsur = [[boxer alloc] init];
    if (boxsur != nil)
    {
        [boxsur printResult];
    }
    
    // poodle class override
    poodle *poosur = [[poodle alloc] init];
    if (poosur !=nil)
    {
        [poosur printResult];
    }
    
    dogFactory *factory = [[dogFactory alloc] init];
    if (factory != nil)
    {
        // chihuahua factory calls
        dogBase *chihua = [factory GetDog:dogType_Chihuahua];
        
        NSString *chichi = [chihua printType];

        NSString *chitot = [chihua printResult];
        
        // boxer factory calls
        dogBase *boxie = [factory GetDog:dogType_Boxer];
        
        NSString *boxbox = [boxie printType];
        
        NSString *boxtot = [boxie printResult];
        
        // poodle factory calls
        dogBase *poos = [factory GetDog:dogType_Poodle];
        
        NSString *poopoo = [poos printType];
        
        NSString *pootot = [poos printResult];
        
        // breedname from factory chihuahua
        UILabel *chi = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 20.0f, 140.0f, 30.0f)];
        if (chi != nil)
        {
            chi.backgroundColor = [UIColor whiteColor];
            chi.text = chichi;
            chi.textColor = [UIColor blueColor];
            chi.textAlignment = NSTextAlignmentLeft;
        }
        [self.view addSubview:chi];
        
        //total from factory
        UILabel *chires = [[UILabel alloc] initWithFrame:CGRectMake(160.0f, 20.0f, 140.0f, 30.0f)];
        if (chires != nil)
        {
            chires.backgroundColor = [UIColor whiteColor];
            chires.text = chitot;
            chires.textColor = [UIColor blueColor];
            chires.textAlignment = NSTextAlignmentLeft;
        }
        [self.view addSubview:chires];
        
        //total from chihuahua subclass
        UILabel *chiliv = [[UILabel alloc] initWithFrame:CGRectMake(160.0f, 70.0f, 140.0f, 30.0f)];
        if (chiliv != nil)
        {
            chiliv.backgroundColor = [UIColor whiteColor];
            chiliv.text = [chisur printResult];
            chiliv.textColor = [UIColor blueColor];
            chiliv.textAlignment = NSTextAlignmentLeft;
        }
        [self.view addSubview:chiliv];
        
        // breedname from factory boxer
        UILabel *box = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 120.0f, 140.0f, 30.0f)];
        if (box != nil)
        {
            box.backgroundColor = [UIColor whiteColor];
            box.text = boxbox;
            box.textColor = [UIColor blueColor];
            box.textAlignment = NSTextAlignmentLeft;
        }
        [self.view addSubview:box];
        
        // total from factory
        UILabel *boxres = [[UILabel alloc] initWithFrame:CGRectMake(160.0f, 120.0f, 140.0f, 30.0f)];
        if (boxres != nil)
        {
            boxres.backgroundColor = [UIColor whiteColor];
            boxres.text = boxtot;
            boxres.textColor = [UIColor blueColor];
            boxres.textAlignment = NSTextAlignmentLeft;
        }
        [self.view addSubview:boxres];
        
        // total from boxer subclass
        UILabel *boxliv = [[UILabel alloc] initWithFrame:CGRectMake(160.0f, 170.0f, 140.0f, 30.0f)];
        if (boxliv != nil)
        {
            boxliv.backgroundColor = [UIColor whiteColor];
            boxliv.text = [boxsur printResult];
            boxliv.textColor = [UIColor blueColor];
            boxliv.textAlignment = NSTextAlignmentLeft;
        }
        [self.view addSubview:boxliv];
        
        // breedname from factory poodle
        UILabel *poo = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 220.0f, 140.0f, 30.0f)];
        if (poo != nil)
        {
            poo.backgroundColor = [UIColor whiteColor];
            poo.text = poopoo;
            poo.textColor = [UIColor blueColor];
            poo.textAlignment = NSTextAlignmentLeft;
        }
        [self.view addSubview:poo];
        
        // total from factory
        UILabel *poores = [[UILabel alloc] initWithFrame:CGRectMake(160.0f, 220.0f, 140.0f, 30.0f)];
        if (poores != nil)
        {
            poores.backgroundColor = [UIColor whiteColor];
            poores.text = pootot;
            poores.textColor = [UIColor blueColor];
            poores.textAlignment = NSTextAlignmentLeft;
        }
        [self.view addSubview:poores];
        
        // total from poodle subclass
        UILabel *pooliv = [[UILabel alloc] initWithFrame:CGRectMake(160.0f, 270.0f, 140.0f, 30.0f)];
        if (pooliv != nil)
        {
            pooliv.backgroundColor = [UIColor whiteColor];
            pooliv.text = [poosur printResult];
            pooliv.textColor = [UIColor blueColor];
            pooliv.textAlignment = NSTextAlignmentLeft;
        }
        [self.view addSubview:pooliv];
        
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
