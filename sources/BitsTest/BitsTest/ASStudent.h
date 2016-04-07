//
//  ASStudent.h
//  BitsTest
//
//  Created by Oleksii Skutarenko on 02.11.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    
    ASStudentSubjectTypeBiology         = 1 << 0,
    ASStudentSubjectTypeMath            = 1 << 1,
    ASStudentSubjectTypeDevelopment     = 1 << 2,
    ASStudentSubjectTypeEngineering     = 1 << 3,
    ASStudentSubjectTypeArt             = 1 << 4,
    ASStudentSubjectTypePhycology       = 1 << 5,
    ASStudentSubjectTypeAnatomy         = 1 << 6
    
} ASStudentSubjectType;


@interface ASStudent : NSObject

@property (assign, nonatomic) ASStudentSubjectType subjectType;

/*
@property (assign, nonatomic) BOOL studiesBiology;
@property (assign, nonatomic) BOOL studiesMath;
@property (assign, nonatomic) BOOL studiesDevelopment;
@property (assign, nonatomic) BOOL studiesEngineering;
@property (assign, nonatomic) BOOL studiesArt;
@property (assign, nonatomic) BOOL studiesPhycology;
@property (assign, nonatomic) BOOL studiesAnatomy;
*/
@end
