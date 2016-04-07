//
//  ASObject.m
//  TimeTest
//
//  Created by Oleksii Skutarenko on 04.11.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASObject.h"

@interface ASObject ()

@property (strong, nonatomic) NSTimer* timer;

@end

@implementation ASObject

- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"ASObject is initialized");
        
        NSTimer* timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerTest:) userInfo:nil repeats:YES];
        [timer setFireDate:[NSDate dateWithTimeIntervalSinceNow:5]];
        
        self.timer = timer;
    }
    return self;
}

- (void) timerTest:(NSTimer*) timer {
    
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH:mm:ss:SSS"];
    NSLog(@"%@", [dateFormatter stringFromDate:[NSDate date]]);
    
    //[timer invalidate];
}

- (void) dealloc {
    NSLog(@"ASObject is deallocated");
}

@end
