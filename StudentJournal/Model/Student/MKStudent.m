//
//  MKStudent.m
//  StudentJournal
//
//  Created by … on 5.05.21.
//

#import "MKStudent.h"

@implementation MKStudent

-(instancetype)initWithName: (NSString*) fullName {
    self = [super init];
    if (self) {
        _fullName = fullName;
    }
    return self;
}

@end
