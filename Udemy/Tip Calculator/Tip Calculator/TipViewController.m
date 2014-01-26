//
//  TipViewController.m
//  Tip Calculator
//
//  Created by Konnor Krupp on 1/25/14.
//  Copyright (c) 2014 Konnor Krupp. All rights reserved.
//

#import "TipViewController.h"

@interface TipViewController ()

@end

@implementation TipViewController

- (void)viewDidLoad
{
    [_yourBill becomeFirstResponder];
    
    // Set the fonts of all the labels
    [_yourBill setFont:[UIFont fontWithName:@"Aller" size:30]];
    [_totalBill setFont:[UIFont fontWithName:@"Aller" size:23]];
    [_tipAmount setFont:[UIFont fontWithName:@"Aller" size:23]];
    [_tipPercent setFont:[UIFont fontWithName:@"Aller" size:20]];
    
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)calculateTip:(id)sender {
    
    // Round the slider value to nearest whole number
    float roundPercent = [_percentSlider value] * 100;
    NSString *roundedTipString = [[NSString alloc] initWithFormat:@"%.0f",
                                  roundPercent];
    float roundedTip =  [roundedTipString floatValue];
    
    // Takes the user input and does the math involved to get the tip and bill
    float convertNum = [[_yourBill text] floatValue];
    float tip = convertNum * roundedTip/100;
    float billWithTip = convertNum + tip;
    
    // Set the "Tip Amount" String
    NSString *tipString = [[NSString alloc] initWithFormat:@"%.2f", tip];
    [_tipAmount setText:tipString];
    
    // Set the "Total Bill" String
    NSString *totalString = [[NSString alloc] initWithFormat:@"%.2f", billWithTip];
    [_totalBill setText:totalString];

    
}


- (IBAction)sliderChange:(id)sender {
    
    // Convert the decimal from the slider to an integer and display it as the
    // slider moves
    float decimalToPercent = [_percentSlider value] * 100;
    NSString *tipPercentString = [[NSString alloc] initWithFormat:@"%.0f%%",
                                  decimalToPercent];
    [_tipPercent setText:tipPercentString];
    
}

//
// All the quick select buttons
//
- (IBAction)fivePercentButton:(id)sender {
    // Set slider value
    self.percentSlider.value = .05;
    
    //Update the percent label in the center
    float decimalToPercent = [_percentSlider value] * 100;
    NSString *tipPercentString = [[NSString alloc] initWithFormat:@"%.0f%%",
                                  decimalToPercent];
    [_tipPercent setText:tipPercentString];
}

- (IBAction)tenPercentButton:(id)sender {
    //set slider value
    self.percentSlider.value = .1;
    
     //Update the percent label in the center
    float decimalToPercent = [_percentSlider value] * 100;
    NSString *tipPercentString = [[NSString alloc] initWithFormat:@"%.0f%%",
                                  decimalToPercent];
    [_tipPercent setText:tipPercentString];
}

- (IBAction)fifteenPercentButton:(id)sender {
    //set slider value
    self.percentSlider.value = .15;
    
     //Update the percent label in the center
    float decimalToPercent = [_percentSlider value] * 100;
    NSString *tipPercentString = [[NSString alloc] initWithFormat:@"%.0f%%",
                                  decimalToPercent];
    [_tipPercent setText:tipPercentString];
}
- (IBAction)twentyPercentButton:(id)sender {
    //set slider value
    self.percentSlider.value = .2;
    
     //Update the percent label in the center
    float decimalToPercent = [_percentSlider value] * 100;
    NSString *tipPercentString = [[NSString alloc] initWithFormat:@"%.0f%%",
                                  decimalToPercent];
    [_tipPercent setText:tipPercentString];
}
@end
