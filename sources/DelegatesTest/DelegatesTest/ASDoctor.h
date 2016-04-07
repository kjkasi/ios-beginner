//
//  ASDoctor.h
//  DelegatesTest
//
//  Created by Oleksii Skutarenko on 16.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASPatient.h"

@interface ASDoctor : NSObject <ASPatientDelegate>

@end
