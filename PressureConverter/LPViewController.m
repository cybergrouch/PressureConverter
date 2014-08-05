//
//  LPViewController.m
//  PressureConverter
//
//  Created by Lange on 5/8/14.
//  Copyright (c) 2014 Lange Company. All rights reserved.
//

#import "LPViewController.h"

@interface LPViewController ()

@end

@implementation LPViewController
@synthesize lblLowerPSI;
@synthesize lblMiddlePSI;
@synthesize lblUpperPSI;
@synthesize txtLowerBound;
@synthesize txtUpperBound;

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Loaded");
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)txtChangedUpperBound:(UITextField *)sender forEvent:(UIEvent *)event {
    NSLog(@"Upper value changed");
    [self parseAndConvert];
}

- (IBAction)txtChangedLowerBound:(UITextField *)sender forEvent:(UIEvent *)event {
    NSLog(@"Lower value changed");
    [self parseAndConvert];
}

- (void) parseAndConvert
{
    NSLog(@"Parse and convert");
    NSDecimalNumber *lower = [NSDecimalNumber decimalNumberWithString:[txtLowerBound text]];
//    NSDecimalNumber *upper = [NSDecimalNumber decimalNumberWithString:[txtUpperBound text]];
    
    NSDecimalNumber *lowerPSI = [lower decimalNumberByMultiplyingBy:[NSDecimalNumber decimalNumberWithString:@"14.223595"]];
    NSLog([lowerPSI stringValue]);
}


@end
