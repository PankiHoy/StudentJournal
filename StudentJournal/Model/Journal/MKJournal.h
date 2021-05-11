//
//  MKJournal.h
//  StudentJournal
//
//  Created by … on 5.05.21.
//

#import <Foundation/Foundation.h>
#import "Subject.h"

NS_ASSUME_NONNULL_BEGIN

@interface MKJournal : NSObject

@property (strong, nonatomic) NSMutableArray<Subject*>* subjects;

- (instancetype)initWithSubjects:(NSArray*)subjects;

- (void)addSubject:(Subject*)subject;
- (void)addSubjects:(NSArray *)subjects;
- (void)addStudentToSubject:(MKStudent*)student subject:(NSString*)nameOfSubject;
- (void)addStudentsToSubject:(NSArray*)students subject:(NSString*)nameOfSubject;
- (void)markStudentAbcent:(NSString *)nameOfSubject student:(NSString *)nameOfStudent date:(CGFloat)date;
- (void)getListOfSubjects;
- (void)getListOfStudentsAssignedToSubject:(NSString*)nameOfSubject;

@end

NS_ASSUME_NONNULL_END
