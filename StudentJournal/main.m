//
//  main.m
//  StudentJournal
//
//  Created by … on 5.05.21.
//

#import <Foundation/Foundation.h>
#import "MKJournal.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray* students = @[[[MKStudent alloc] initWithName:@"Maksim Karaseu"],
                              [[MKStudent alloc] initWithName:@"Vitaliy Hileuski"],
                              [[MKStudent alloc] initWithName:@"Artem Miroshnichenko"]];
        NSArray* subjects = @[[[Subject alloc] initWithNameOfSubject:@"Technology of platform independent applications"],
                              [[Subject alloc] initWithNameOfSubject:@"Operation systems of programmign"],
                              [[Subject alloc] initWithNameOfSubject:@"Java development"]];
        MKJournal* journal = [[MKJournal alloc] initWithSubjects:subjects];
        [journal addStudentsToSubject:students subject:@"Technology of platform independent applications"];
        
        [journal markStudentAbcent:@"Technology of platform independent applications"
                           student:@"Maksim Karaseu"
                              date:11.05];
        [journal getListOfStudentsAssignedToSubject:@"Technology of platform independent applications"];
    }
    return 0;
}
