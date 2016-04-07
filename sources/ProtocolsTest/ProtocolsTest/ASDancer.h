//
//  ASDancer.h
//  ProtocolsTest
//
//  Created by Oleksii Skutarenko on 11.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ASPatient.h"

@interface ASDancer : NSObject <ASPatient>

@property (strong, nonatomic) NSString* favouriteDance;
@property (strong, nonatomic) NSString* name;

- (void) dance;

@end
