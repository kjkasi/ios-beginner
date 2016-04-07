//
//  ASViewController.h
//  ControlsTest
//
//  Created by Oleksii Skutarenko on 09.12.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ASViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property (weak, nonatomic) IBOutlet UISlider *redComponentSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenComponentSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueComponentSlider;
@property (weak, nonatomic) IBOutlet UISegmentedControl* colorSchemeControl;


- (IBAction)actionSlider:(UISlider *)sender;
- (IBAction)actionEnable:(UISwitch *)sender;

@end
