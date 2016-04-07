//
//  ASSettingsViewController.h
//  SettingsTest
//
//  Created by Oleksii Skutarenko on 21.12.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ASSettingsViewController : UITableViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *loginField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *levelControl;
@property (weak, nonatomic) IBOutlet UISwitch *shadowsSwitch;
@property (weak, nonatomic) IBOutlet UISegmentedControl *detalizationControl;
@property (weak, nonatomic) IBOutlet UISlider *soundSlider;
@property (weak, nonatomic) IBOutlet UISlider *musicSlider;


- (IBAction)actionTextChanged:(UITextField *)sender;
- (IBAction)actionValueChanged:(id)sender;

@end
