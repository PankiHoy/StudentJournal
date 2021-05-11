//
//  Subject.h
//  StudentJournal
//
//  Created by … on 5.05.21.
//

#import <Foundation/Foundation.h>
#import "MKDayOfSubject.h"

NS_ASSUME_NONNULL_BEGIN

@interface Subject : NSObject

@property (assign, nonatomic) long Id; 
@property (copy, nonatomic) NSString* nameOfSubject;
@property (strong, nonatomic) NSMutableArray<MKDayOfSubject*>* daysOfSubject;
@property (strong, nonatomic) NSMutableArray<MKStudent*>* students;

- (instancetype)initWithNameOfSubject: (NSString*) nameOfSubject;
- (void)addDaysOfSubjectObject:(MKDayOfSubject *)object;
- (MKDayOfSubject *)findDayOfSubjectByDate:(CGFloat)date;
- (NSUInteger)findIndexOfDayOfSubjectByDate:(CGFloat)date;

@end

NS_ASSUME_NONNULL_END
