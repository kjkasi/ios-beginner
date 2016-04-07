//
//  ASParentClass.m
//  FunctionsTest
//
//  Created by Oleksii Skutarenko on 29.09.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASParentClass.h"

@implementation ASParentClass

- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"Instance of parent class is initialized");
    }
    return self;
}

+ (void) whoAreYou {
    NSLog(@"I AM ASParentClass %@", self);
}


- (void) sayHello {
    NSLog(@"Parent says hello! %@", self);
}

- (void) say:(NSString*) string {
    NSLog(@"%@", string);
}

- (void) say:(NSString*) string and:(NSString*) string2 {
    NSLog(@"%@, %@", string, string2);
}

- (void) say:(NSString*) string and:(NSString*) string2 andAfterThat:(NSString*) string3 {
    NSLog(@"%@, %@, %@", string, string2, string3);
}


- (NSString*) saySomeNumberString {
    
    return [NSString stringWithFormat:@"%@", [NSDate date]];
    
}

- (NSString*) saySomething {
    
    NSString* string = [self saySomeNumberString];
    
    return string;
}


@end
