//
//  LPViewController.h
//  PressureConverter
//
//  Created by Lange on 5/8/14.
//  Copyright (c) 2014 Lange Company. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LPViewController : UIViewController

- (IBAction)txtChangedUpperBound:(UITextField *)sender forEvent:(UIEvent *)event;

- (IBAction)txtChangedLowerBound:(UITextField *)sender forEvent:(UIEvent *)event;

@property (weak, nonatomic) IBOutlet UILabel *lblLowerPSI;
@property (weak, nonatomic) IBOutlet UILabel *lblMiddlePSI;
@property (weak, nonatomic) IBOutlet UILabel *lblUpperPSI;
@property (weak, nonatomic) IBOutlet UITextField *txtLowerBound;
@property (weak, nonatomic) IBOutlet UITextField *txtUpperBound;

@end
