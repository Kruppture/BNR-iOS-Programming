//
//  TipViewController.h
//  Tip Calculator
//
//  Created by Konnor Krupp on 1/25/14.
//  Copyright (c) 2014 Konnor Krupp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TipViewController : UIViewController

- (IBAction)calculateTip:(id)sender;
- (IBAction)sliderChange:(id)sender;

@property (strong, nonatomic) IBOutlet UISlider *percentSlider;
@property (strong, nonatomic) IBOutlet UITextField *yourBill;
@property (weak, nonatomic) IBOutlet UILabel *totalBill;
@property (strong, nonatomic) IBOutlet UILabel *tipAmount;
@property (strong, nonatomic) IBOutlet UILabel *tipPercent;

- (IBAction)fivePercentButton:(id)sender;
- (IBAction)tenPercentButton:(id)sender;
- (IBAction)fifteenPercentButton:(id)sender;
- (IBAction)twentyPercentButton:(id)sender;

@end
