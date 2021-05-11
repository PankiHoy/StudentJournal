//
//  Subject.m
//  StudentJournal
//
//  Created by … on 5.05.21.
//

#import "Subject.h"

@implementation Subject

-(instancetype)initWithNameOfSubject:(NSString *)nameOfSubject {
    self = [super init];
    if (self) {
        _nameOfSubject = nameOfSubject;
        _daysOfSubject = [@[[[MKDayOfSubject alloc] init:11.05],
                           [[MKDayOfSubject alloc] init:12.05],
                           [[MKDayOfSubject alloc] init:13.05]] mutableCopy];
        _students = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addDaysOfSubjectObject:(MKDayOfSubject *)object {
    [self.daysOfSubject addObject:object];
}

- (MKDayOfSubject *)findDayOfSubjectByDate:(CGFloat)date {
    for (int i=0; i<[self.daysOfSubject count]; i++) {
        if ([self.daysOfSubject[i] date] == date) {
            return self.daysOfSubject[i];
        }
    }
    return 0;
}

- (NSUInteger)findIndexOfDayOfSubjectByDate:(CGFloat)date {
    for (int i=0; i<[self.daysOfSubject count]; i++) {
        if (self.daysOfSubject[i] == [self findDayOfSubjectByDate:date]) {
            return i;
        }
    }
    return NO;
}


@end
