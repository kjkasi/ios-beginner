//
//  ASViewController.h
//  TextFieldsTest
//
//  Created by Oleksii Skutarenko on 13.12.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ASViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField* firstNameField;
@property (weak, nonatomic) IBOutlet UITextField* lastNameField;

- (IBAction) actionLog:(id)sender;
- (IBAction)actionTextChanged:(UITextField *)sender;

@end
