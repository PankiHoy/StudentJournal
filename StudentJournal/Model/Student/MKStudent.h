//
//  MKStudent.h
//  StudentJournal
//
//  Created by … on 5.05.21.
//

#import <Foundation/Foundation.h>
#import "MKIAmStudent.h"

NS_ASSUME_NONNULL_BEGIN

@interface MKStudent : NSObject <MKIAmStudent>

@property (assign, nonatomic) long Id;
@property (copy, nonatomic) NSString* fullName;
@property (assign, nonatomic) NSInteger absentMarks;

- (instancetype)initWithName: (NSString*) fullName; 

@end

NS_ASSUME_NONNULL_END
