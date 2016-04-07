//
//  ASDancer.m
//  ProtocolsTest
//
//  Created by Oleksii Skutarenko on 11.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASDancer.h"

@implementation ASDancer

- (void) dance {
    
}

#pragma mark - ASPatient

- (BOOL) areYouOK {
    
    BOOL ok = arc4random() % 2;
    
    NSLog(@"Is dancer %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return ok;
}

- (void) takePill {
    NSLog(@"Dancer %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Dancer %@ takes makes a shot", self.name);
}

@end
