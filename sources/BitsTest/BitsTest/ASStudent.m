//
//  ASStudent.m
//  BitsTest
//
//  Created by Oleksii Skutarenko on 02.11.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASStudent.h"

@implementation ASStudent


- (NSString*) answerByType:(ASStudentSubjectType) type {
    return self.subjectType & type ? @"yes" : @"no";
}

- (NSString*) description {
   
    return [NSString stringWithFormat:  @"Student studies:\n"
                                        "biology = %@\n"
                                        "math = %@\n"
                                        "development = %@\n"
                                        "engineering = %@\n"
                                        "art = %@\n"
                                        "phycology = %@\n"
                                        "anatomy = %@",
                                        [self answerByType:ASStudentSubjectTypeBiology],
                                        [self answerByType:ASStudentSubjectTypeMath],
                                        [self answerByType:ASStudentSubjectTypeDevelopment],
                                        [self answerByType:ASStudentSubjectTypeEngineering],
                                        [self answerByType:ASStudentSubjectTypeArt],
                                        [self answerByType:ASStudentSubjectTypePhycology],
                                        [self answerByType:ASStudentSubjectTypeAnatomy]];

}

@end
