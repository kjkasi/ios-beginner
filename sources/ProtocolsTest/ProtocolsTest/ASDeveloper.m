//
//  ASDeveloper.m
//  ProtocolsTest
//
//  Created by Oleksii Skutarenko on 11.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASDeveloper.h"

@implementation ASDeveloper

- (void) work {
    
}



#pragma mark - ASPatient

- (BOOL) areYouOK {
    
    BOOL ok = arc4random() % 2;
    
    NSLog(@"Is developer %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return ok;
}

- (void) takePill {
    NSLog(@"Developer %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Developer %@ takes makes a shot", self.name);
}

- (NSString*) howIsYouJob {
    return @"My job is awesome!";
}


@end
