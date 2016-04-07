//
//  ASParentClass.h
//  FunctionsTest
//
//  Created by Oleksii Skutarenko on 29.09.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASParentClass : NSObject

+ (void) whoAreYou;

- (void) sayHello;
- (void) say:(NSString*) string;
- (void) say:(NSString*) string and:(NSString*) string2;
- (void) say:(NSString*) string and:(NSString*) string2 andAfterThat:(NSString*) string3;

- (NSString*) saySomeNumberString;
- (NSString*) saySomething;

@end
