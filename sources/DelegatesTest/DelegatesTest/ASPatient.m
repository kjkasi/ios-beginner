//
//  ASPatient.m
//  DelegatesTest
//
//  Created by Oleksii Skutarenko on 16.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASPatient.h"

@implementation ASPatient

- (BOOL) howAreYou {
    
    BOOL iFeelGood = arc4random() % 2;
    
    
    if (!iFeelGood) {
        [self.delegate patientFeelsBad:self];
    }
    
    
    return iFeelGood;
}

- (void) takePill {
    NSLog(@"%@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"%@ make a shot", self.name);
}

@end
