//
//  ASGovernment.m
//  NotificationsTest
//
//  Created by Oleksii Skutarenko on 21.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASGovernment.h"

NSString* const ASGovernmentTaxLevelDidChangeNotification = @"ASGovernmentTaxLevelDidChangeNotification";
NSString* const ASGovernmentSalaryDidChangeNotification = @"ASGovernmentSalaryDidChangeNotification";
NSString* const ASGovernmentPensionDidChangeNotification = @"ASGovernmentPensionDidChangeNotification";
NSString* const ASGovernmentAveragePriceDidChangeNotification = @"ASGovernmentAveragePriceDidChangeNotification";

NSString* const ASGovernmentTaxLevelUserInfoKey = @"ASGovernmentTaxLevelUserInfoKey";
NSString* const ASGovernmentSalaryUserInfoKey = @"ASGovernmentSalaryUserInfoKey";
NSString* const ASGovernmentPensionUserInfoKey = @"ASGovernmentPensionUserInfoKey";
NSString* const ASGovernmentAveragePriceUserInfoKey = @"ASGovernmentAveragePriceUserInfoKey";

@implementation ASGovernment

- (id)init
{
    self = [super init];
    if (self) {
        _taxLevel = 5.f;
        _salary = 1000;
        _pension = 500;
        _averagePrice = 10.f;
    }
    return self;
}

- (void) setTaxLevel:(CGFloat)taxLevel {
    _taxLevel = taxLevel;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:taxLevel] forKey:ASGovernmentTaxLevelUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ASGovernmentTaxLevelDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) setSalary:(CGFloat)salary {
    _salary = salary;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:salary] forKey:ASGovernmentSalaryUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ASGovernmentSalaryDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) setPension:(CGFloat)pension {
    
    _pension = pension;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension] forKey:ASGovernmentPensionUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ASGovernmentPensionDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
    
}

- (void) setAveragePrice:(CGFloat)averagePrice {
    
    _averagePrice = averagePrice;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:averagePrice] forKey:ASGovernmentAveragePriceUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ASGovernmentAveragePriceDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
    
}




@end
