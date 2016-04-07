//
//  ASObject.m
//  BlocksTest
//
//  Created by Oleksii Skutarenko on 25.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASObject.h"

@interface ASObject ()

@property (copy, nonatomic) ObjectBlock objectBlock;

@end


@implementation ASObject

- (id)init
{
    self = [super init];
    if (self) {
        
        __weak ASObject* weakSelf = self;
        
        self.objectBlock = ^{
            NSLog(@"%@", weakSelf.name);
        };
    }
    return self;
}


- (void) testMethod:(ObjectBlock) block {
    block();
}

- (void) dealloc {
    NSLog(@"ASObject is deallocated");
}

@end
