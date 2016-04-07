//
//  ASViewController.m
//  OutletsTest
//
//  Created by Oleksii Skutarenko on 19.11.13.
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat) randomFromZeroToOne {
    return (float)(arc4random() % 256) / 255;
}

- (UIColor*) randomColor {
    
    CGFloat r = [self randomFromZeroToOne];
    CGFloat g = [self randomFromZeroToOne];
    CGFloat b = [self randomFromZeroToOne];
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.f];
}

- (void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    //self.testView.backgroundColor = [self randomColor];
    //self.testView2.backgroundColor = [self randomColor];
    
    for (UIView* v in self.testViews) {
        v.backgroundColor = [self randomColor];
    }
}


@end
