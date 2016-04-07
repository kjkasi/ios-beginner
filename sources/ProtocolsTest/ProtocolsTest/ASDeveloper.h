//
//  ASDeveloper.h
//  ProtocolsTest
//
//  Created by Oleksii Skutarenko on 11.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ASPatient.h"


@interface ASDeveloper : NSObject <ASPatient>

@property (assign, nonatomic) CGFloat experience;
@property (strong, nonatomic) NSString* name;

- (void) work;

@end
