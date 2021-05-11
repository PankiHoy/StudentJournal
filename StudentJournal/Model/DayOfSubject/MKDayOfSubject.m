//
//  MKDayOfSubject.m
//  StudentJournal
//
//  Created by … on 5.05.21.
//

#import "MKDayOfSubject.h"

@implementation MKDayOfSubject

-(instancetype)init: (CGFloat)date{
    self = [super init];
    if (self) {
        _date = date;
        _studentsWithAbcenceMarks = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void)addStudentWithAbcenceMark:(MKStudent *)student {
    [self.studentsWithAbcenceMarks setValue:@(YES) forKey:student.fullName];
}

- (void)addStudentsWithAbcenceMarks:(NSArray *)arrayOfStudents {
    for (MKStudent *student in arrayOfStudents) {
        [self.studentsWithAbcenceMarks setObject:@(YES)
                                         forKey:student.fullName];
    }
}


@end
