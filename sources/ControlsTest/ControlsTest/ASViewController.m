//
//  ASViewController.m
//  ControlsTest
//
//  Created by Oleksii Skutarenko on 09.12.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASViewController.h"

@interface ASViewController ()

@end


typedef enum {
    
    ASColorSchemeTypeRGB,
    ASColorSchemeTypeHSV
    
} ASColorSchemeType;



@implementation ASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self refreshScreen];
    
    self.colorSchemeControl.selectedSegmentIndex = ASColorSchemeTypeRGB;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private Methods

- (void) refreshScreen {
    
    CGFloat red = self.redComponentSlider.value;
    CGFloat green = self.greenComponentSlider.value;
    CGFloat blue = self.blueComponentSlider.value;
    
    UIColor* color = nil;
    
    if (self.colorSchemeControl.selectedSegmentIndex == ASColorSchemeTypeRGB) {
        
        color = [UIColor colorWithRed:red green:green blue:blue alpha:1.f];
        
    } else {
        
        color = [UIColor colorWithHue:red saturation:green brightness:blue alpha:1.f];
    }
    
    CGFloat hue, saturation, brightness, alpha;
    
    NSString* result = @"";
    
    if ([color getRed:&red green:&green blue:&blue alpha:&alpha]) {
        
        result = [result stringByAppendingFormat:@"RGB:{%1.2f, %1.2f, %1.2f}", red, green, blue];
        
    } else {
        
        result = [result stringByAppendingFormat:@"RGB:{NO DATA}"];
    }
    
    if ([color getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha]) {
        
        result = [result stringByAppendingFormat:@"\tHSV:{%1.2f, %1.2f, %1.2f}", hue, saturation, brightness];
        
    } else {
        
        result = [result stringByAppendingFormat:@"\tHSV:{NO DATA}"];
    }
    
    self.infoLabel.text = result;

    self.view.backgroundColor = color;
}

#pragma mark - Actions

- (IBAction)actionSlider:(UISlider *)sender {
    
    [self refreshScreen];
    
}

- (IBAction)actionEnable:(UISwitch *)sender {
    
    self.redComponentSlider.enabled = self.greenComponentSlider.enabled = self.blueComponentSlider.enabled = sender.isOn;
    
    /*
    [[UIApplication sharedApplication] beginIgnoringInteractionEvents];
    double delayInSeconds = 0.4f;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        
        if ([[UIApplication sharedApplication] isIgnoringInteractionEvents]) {
            [[UIApplication sharedApplication] endIgnoringInteractionEvents];
        }
    });
    */
}



@end
