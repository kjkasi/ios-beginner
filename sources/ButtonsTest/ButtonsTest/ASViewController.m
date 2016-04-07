//
//  ASViewController.m
//  ButtonsTest
//
//  Created by Oleksii Skutarenko on 04.12.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASViewController.h"

@interface ASViewController ()

@end

@implementation ASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button.frame = CGRectMake(200, 200, 200, 200);
    button.backgroundColor = [UIColor lightGrayColor];
    
    /*
    NSDictionary* attributes = @{NSFontAttributeName: [UIFont systemFontOfSize:30],
                                 NSForegroundColorAttributeName: [UIColor orangeColor]};
    
    NSAttributedString* title = [[NSAttributedString alloc] initWithString:@"Button" attributes:attributes];

    [button setAttributedTitle:title forState:UIControlStateNormal];
    
    
    NSDictionary* attributes2 = @{NSFontAttributeName: [UIFont systemFontOfSize:20],
                                 NSForegroundColorAttributeName: [UIColor redColor]};
    
    NSAttributedString* title2 = [[NSAttributedString alloc] initWithString:@"Button Pressed" attributes:attributes2];
    
    [button setAttributedTitle:title2 forState:UIControlStateHighlighted];
    */
    
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button setTitle:@"Button Pressed" forState:UIControlStateHighlighted];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    
    //UIEdgeInsets insets = UIEdgeInsetsMake(100, 100, 0, 0);
    //button.titleEdgeInsets = insets;
    
    //[self.view addSubview:button];
    
    [button addTarget:self action:@selector(actionTest:event:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(actionTestOutside:) forControlEvents:UIControlEventTouchUpOutside];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (void) actionTest:(UIButton*) button event:(UIEvent*) event {
    
    NSLog(@"Button Pressed Inside!");
    
}

- (void) actionTestOutside:(UIButton*) button {
    
    NSLog(@"Button Pressed Outside!");
    
}

- (IBAction)actionTest2:(UIButton *)sender {
    
    NSLog(@"actionTest2 tag = %d", sender.tag);
    
    self.indicatorLabel.text = [NSString stringWithFormat:@"%d", sender.tag];
    
}

- (IBAction)actionTest2TouchDown:(UIButton*)sender {
    
    //NSLog(@"actionTest2TouchDown");
    
}

@end
