//
//  MKJournal.m
//  StudentJournal
//
//  Created by … on 5.05.21.
//

#import "MKJournal.h"

@implementation MKJournal

#pragma mark - Initialization

- (instancetype)init
{
    self = [super init];
    if (self) {
        _subjects = [[NSMutableArray alloc] init];
    }
    return self;
}

- (instancetype)initWithSubjects:(NSArray*)subjects
{
    self = [super init];
    if (self) {
        _subjects = [subjects mutableCopy];
    }
    return self;
}

#pragma mark - Methods

- (void)addSubject:(Subject *)subject {
    [_subjects addObject:subject];
}

- (void)addSubjects:(NSArray *)subjects {
    [_subjects addObjectsFromArray:subjects];
}

- (void)addStudentToSubject:(MKStudent *)student subject: (NSString*)nameOfSubject {
    for (int i=0; i<self.subjects.count; i++) {
        if ([self.subjects[i] nameOfSubject] == nameOfSubject) {
            [self.subjects[i].students addObject:student];
            for (int j=0; j<[self.subjects[i].daysOfSubject count]; j++) {
                [self.subjects[i].daysOfSubject[j] addStudentWithAbcenceMark:student];
            }
        }
    }
}

- (void)addStudentsToSubject:(NSArray *)students subject:(nonnull NSString *)nameOfSubject{
    for (int i=0; i<_subjects.count; i++) {
        if ([_subjects[i] nameOfSubject] == nameOfSubject) {
            [_subjects[i].students addObjectsFromArray:students];
            for (int j=0; j<[self.subjects[i].daysOfSubject count]; j++) {
                [self.subjects[i].daysOfSubject[j] addStudentsWithAbcenceMarks:students];
            }
        }
    }
}

-(void)markStudentAbcent:(NSString *)nameOfSubject student:(NSString *)nameOfStudent date:(CGFloat)date {
    for (int i=0; i<[self.subjects count]; i++) {
        if (self.subjects[i].nameOfSubject == nameOfSubject) {
            NSUInteger indexOfDay = [self.subjects[i] findIndexOfDayOfSubjectByDate:date];
            self.subjects[i].daysOfSubject[indexOfDay].studentsWithAbcenceMarks[nameOfStudent] = @(NO);
        }
    }
}

-(void)getListOfSubjects {
    for (Subject *i in _subjects) {
        NSLog(@"%@", [i nameOfSubject]);
    }
}

-(void)getListOfStudentsAssignedToSubject:(NSString *)nameOfSubject {
    NSMutableArray* arrayOfStudents = [[NSMutableArray alloc] init];
    
    for (id subject in _subjects) {
        if ([subject nameOfSubject] == nameOfSubject) {
            arrayOfStudents = [subject students];
            NSLog(@"For subject: %@ students applied: %@", [subject nameOfSubject], arrayOfStudents);
        }
    }
}

@end
