//
//  ASPatient.h
//  ProtocolsTest
//
//  Created by Oleksii Skutarenko on 11.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ASPatient <NSObject>

@required

@property (strong, nonatomic) NSString* name;
- (BOOL) areYouOK;
- (void) takePill;
- (void) makeShot;

@optional
- (NSString*) howIsYourFamily;
- (NSString*) howIsYouJob;


@end
