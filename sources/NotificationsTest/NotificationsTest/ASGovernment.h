//
//  ASGovernment.h
//  NotificationsTest
//
//  Created by Oleksii Skutarenko on 21.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString* const ASGovernmentTaxLevelDidChangeNotification;
extern NSString* const ASGovernmentSalaryDidChangeNotification;
extern NSString* const ASGovernmentPensionDidChangeNotification;
extern NSString* const ASGovernmentAveragePriceDidChangeNotification;

extern NSString* const ASGovernmentTaxLevelUserInfoKey;
extern NSString* const ASGovernmentSalaryUserInfoKey;
extern NSString* const ASGovernmentPensionUserInfoKey;
extern NSString* const ASGovernmentAveragePriceUserInfoKey;


@interface ASGovernment : NSObject

@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic) CGFloat salary;
@property (assign, nonatomic) CGFloat pension;
@property (assign, nonatomic) CGFloat averagePrice;


@end
