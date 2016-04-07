//
//  ASUtils.h
//  TricksTest
//
//  Created by Oleksii Skutarenko on 26.03.14.
//  Copyright (c) 2014 Alex Skutarenko. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef UTILS
#define UTILS

//#define PRODUCTION_BUILD

#define LOGS_NOTIFICATIONS_ENABLED 1

#define APP_SHORT_NAME @"TRICKS"


#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.f green:g/255.f blue:b/255.f alpha:a/255.f]

extern NSString * const ASLogNotification;
extern NSString * const ASLogNotificationTextUserInfoKey;

typedef enum {
    ASProgrammerTypeJunior,
    ASProgrammerTypeMid,
    ASProgrammerTypeSenior
} ASProgrammerType;



NSString* fancyDateStringFromDate(NSDate* date);

BOOL iPad();
BOOL iPhone();

NSString* NSStringFromASProgrammerType(ASProgrammerType type);


void ASLog(NSString* format, ...);



#endif