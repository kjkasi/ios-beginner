//
//  ASDoctor.m
//  NotificationsTest
//
//  Created by Oleksii Skutarenko on 21.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASDoctor.h"
#import "ASGovernment.h"

@implementation ASDoctor

#pragma mark - Initialization

- (id)init
{
    self = [super init];
    if (self) {
        
        NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
        
        [nc addObserver:self
               selector:@selector(salaryChangedNotification:)
                   name:ASGovernmentSalaryDidChangeNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(averagePriceChangedNotification:)
                   name:ASGovernmentAveragePriceUserInfoKey
                 object:nil];
    }
    return self;
}

- (void) dealloc {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}

#pragma mark - Notifications

- (void) salaryChangedNotification:(NSNotification*) notification {
    
    NSNumber* value = [notification.userInfo objectForKey:ASGovernmentSalaryUserInfoKey];
    
    CGFloat salary = [value floatValue];
    
    if (salary < self.salary) {
        NSLog(@"Doctors are NOT happy");
    } else {
        NSLog(@"Doctors are happy");
    }
    
    self.salary = salary;
}

- (void) averagePriceChangedNotification:(NSNotification*) notification {
    
}

@end
