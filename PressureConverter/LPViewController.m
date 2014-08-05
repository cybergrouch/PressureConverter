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
    [self parseAndConvert];
    NSLog(@"Loaded");
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)txtEditingChanged:(id)sender {
    [self parseAndConvert];
}

- (BOOL)isNotEmptyString:(NSString *)string;
// Returns NO if the string is not nil anjd not equal to @""
{
    // Note that [string length] == 0 can be false when [string isEqualToString:@""] is true, because these are Unicode strings.
    
    if (((NSNull *) string == [NSNull null]) || (string == nil) ) {
        return NO;
    }
    string = [string stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    if ([string isEqualToString:@""]) {
        return NO;
    }
    
    return YES;
}

- (void) parseAndConvert
{
    double lowerValue = 0.0;
    double middleValue = 0.0;
    double upperValue = 0.0;
    
    if ([self isNotEmptyString:[txtLowerBound text]]) {
        lowerValue = [[txtLowerBound text] doubleValue] * 14.223595;
    }

    if ([self isNotEmptyString:[txtUpperBound text]]) {
        upperValue = [[txtUpperBound text] doubleValue] * 14.223595;
    }
    
    double diff = fabs(upperValue - lowerValue);
    middleValue = MIN(lowerValue, upperValue) + (diff / 2.0);
    
    [lblLowerPSI setText:[NSString stringWithFormat:@"%.3lf", lowerValue]];
    [lblMiddlePSI setText:[NSString stringWithFormat:@"%.3lf", middleValue]];
    [lblUpperPSI setText:[NSString stringWithFormat:@"%.3lf", upperValue]];
    
}


@end
