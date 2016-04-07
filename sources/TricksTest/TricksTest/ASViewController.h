//
//  ASViewController.h
//  TricksTest
//
//  Created by Oleksii Skutarenko on 26.03.14.
//  Copyright (c) 2014 Alex Skutarenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ASViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView* consoleView;

- (IBAction)actionTest:(id)sender;

@end
