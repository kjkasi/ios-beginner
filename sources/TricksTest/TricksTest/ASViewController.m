//
//  ASViewController.m
//  TricksTest
//
//  Created by Oleksii Skutarenko on 26.03.14.
//  Copyright (c) 2014 Alex Skutarenko. All rights reserved.
//

#import "ASViewController.h"
#import "ASUtils.h"

@interface ASViewController ()

@end

@implementation ASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
#ifndef PRODUCTION_BUILD
    
    ASLog(@"%@", fancyDateStringFromDate([NSDate date]));
    
    if (iPad()) {
        ASLog(@"iPad");
    } else {
        ASLog(@"iPhone");
    }
    
    //NSLog(@"%@", NSStringFromASProgrammerType(ASProgrammerTypeSenior));
    
    //NSLog(@"%@", APP_SHORT_NAME);
      
    self.view.backgroundColor = RGBA(155, 200, 120, 250);
#else
    
    ASLog(@"PRODUCTION BUILD");
    
#endif
    
    [[NSNotificationCenter defaultCenter]
     addObserverForName:ASLogNotification
     object:nil
     queue:[NSOperationQueue mainQueue]
     usingBlock:^(NSNotification *notif) {
         
         self.consoleView.text = [NSString stringWithFormat:@"%@\n%@",
                                  self.consoleView.text, [notif.userInfo objectForKey:ASLogNotificationTextUserInfoKey]];
         
     }];
    
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (IBAction)actionTest:(id)sender {
    ASLog(@"actionTest");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
