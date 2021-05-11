//
//  MKDayOfSubject.h
//  StudentJournal
//
//  Created by … on 5.05.21.
//

#import <Foundation/Foundation.h>
#import "MKStudent.h"

NS_ASSUME_NONNULL_BEGIN

@interface MKDayOfSubject : NSObject

@property (strong, nonatomic) NSMutableDictionary* studentsWithAbcenceMarks;
@property (assign, nonatomic) CGFloat date;

//- (void) markStudentAbcent;
- (instancetype)init: (CGFloat)date;
- (void)addStudentWithAbcenceMark:(MKStudent *)student;
- (void)addStudentsWithAbcenceMarks:(NSArray *)arrayOfStudents;

@end

NS_ASSUME_NONNULL_END
