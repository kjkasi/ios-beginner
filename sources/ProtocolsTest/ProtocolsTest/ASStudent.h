//
//  ASStudent.h
//  ProtocolsTest
//
//  Created by Oleksii Skutarenko on 11.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ASPatient.h"

@interface ASStudent : NSObject <ASPatient>

@property (strong, nonatomic) NSString* universityName;
@property (strong, nonatomic) NSString* name;

- (void) study;

@end
