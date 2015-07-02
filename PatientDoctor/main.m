//
//  main.m
//  PatientDoctor
//
//  Created by Jeff Huang on 2015-07-02.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Doctor *doc = [[Doctor alloc] init];
        Patient *patient = [[Patient alloc] init];
        
        patient.healthCareNumber = @"muwahahahaha";
        
        [doc acceptPatient:patient];
        [patient requestMedication:doc andsymptom:@"Flu"];

    }
    return 0;
}
