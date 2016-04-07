//
//  ASUtils.m
//  TricksTest
//
//  Created by Oleksii Skutarenko on 26.03.14.
//  Copyright (c) 2014 Alex Skutarenko. All rights reserved.
//

#import "ASUtils.h"

NSString * const ASLogNotification = @"com.askutarenko.ASLogNotification";
NSString * const ASLogNotificationTextUserInfoKey = @"com.askutarenko.ASLogNotificationTextUserInfoKey";

NSString* fancyDateStringFromDate(NSDate* date) {
    
    static NSDateFormatter* formatter = nil;
    
    if (!formatter) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"-- dd : MM : yy --"];
    }

    return [formatter stringFromDate:date];
}

BOOL iPad() {
    return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad);
}

BOOL iPhone() {
    return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone);
}

NSString* NSStringFromASProgrammerType(ASProgrammerType type) {

    switch (type) {
        case ASProgrammerTypeJunior: return @"ASProgrammerTypeJunior";
        case ASProgrammerTypeMid:   return @"ASProgrammerTypeMid";
        case ASProgrammerTypeSenior: return @"ASProgrammerTypeSenior";
            
        default: return nil;
    }
}

void ASLog(NSString* format, ...) {
 
#if LOGS_ENABLED
    
    va_list argumentList;
    va_start(argumentList, format);
    
    NSLogv(format, argumentList);
    
#if LOGS_NOTIFICATIONS_ENABLED
    
    NSString* log = [[NSString alloc] initWithFormat:format arguments:argumentList];

    [[NSNotificationCenter defaultCenter] postNotificationName:ASLogNotification
                                                        object:nil
                                                      userInfo:@{ASLogNotificationTextUserInfoKey: log}];
#endif
    
    va_end(argumentList);
    
    
#endif
    
}