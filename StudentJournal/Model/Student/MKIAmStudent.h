//
//  MKIAmStudent.h
//  StudentJournal
//
//  Created by … on 5.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MKIAmStudent <NSObject>

@property (assign, nonatomic) long Id;
@property (copy, nonatomic) NSString* fullName;

@optional

@property (strong, nonatomic) NSMutableArray<NSString*>* abcentMarks;

@end

NS_ASSUME_NONNULL_END
