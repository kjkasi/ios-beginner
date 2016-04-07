//
//  ASDoctor.m
//  DelegatesTest
//
//  Created by Oleksii Skutarenko on 16.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASDoctor.h"



@implementation ASDoctor




#pragma mark - ASPatientDelegate

- (void) patientFeelsBad:(ASPatient*) patient {
    
    NSLog(@"Patient %@ feels bad", patient.name);
    
    if (patient.temperature >= 37.f && patient.temperature <= 39.f) {
        [patient takePill];
    } else if (patient.temperature > 39.f) {
        [patient makeShot];
    } else {
        NSLog(@"patient %@ should rest", patient.name);
    }
    
}

- (void) patient:(ASPatient*) patient hasQuestion:(NSString*) question {
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
}

@end
