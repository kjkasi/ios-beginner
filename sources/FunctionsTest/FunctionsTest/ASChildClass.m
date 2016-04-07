//
//  ASChildClass.m
//  FunctionsTest
//
//  Created by Oleksii Skutarenko on 29.09.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASChildClass.h"

@implementation ASChildClass

- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"Instance of child class is initialized");
    }
    return self;
}


- (NSString*) saySomeNumberString {
    
    return @"Something!";
    
}

- (NSString*) saySomething {
    
    return [self saySomeNumberString];
}


@end
