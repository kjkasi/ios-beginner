//
//  ASViewController.h
//  ButtonsTest
//
//  Created by Oleksii Skutarenko on 04.12.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ASViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *indicatorLabel;


- (IBAction)actionTest2:(UIButton *)sender;
- (IBAction)actionTest2TouchDown:(UIButton*)sender;

@end
