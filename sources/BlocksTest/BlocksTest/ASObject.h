//
//  ASObject.h
//  BlocksTest
//
//  Created by Oleksii Skutarenko on 25.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void (^ObjectBlock)(void);

@interface ASObject : NSObject

@property (strong, nonatomic) NSString* name;


- (void) testMethod:(ObjectBlock) block;

@end
