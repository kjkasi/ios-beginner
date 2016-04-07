//
//  ASStudent.m
//  ProtocolsTest
//
//  Created by Oleksii Skutarenko on 11.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASStudent.h"

@implementation ASStudent


- (void) study {
    
}

#pragma mark - ASPatient

- (BOOL) areYouOK {
    
    BOOL ok = arc4random() % 2;
    
    NSLog(@"Is student %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return ok;
}

- (void) takePill {
    NSLog(@"Student %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Student %@ takes makes a shot", self.name);
}

- (NSString*) howIsYourFamily {
    return @"My family is doing well!";
}

@end
