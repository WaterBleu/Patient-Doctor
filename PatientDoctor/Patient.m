//
//  Patient.m
//  PatientDoctor
//
//  Created by Jeff Huang on 2015-07-02.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import "People.h"
#import "Doctor.h"
#import "Patient.h"

@implementation Patient

-(instancetype) init{
    self = [super init];
    
    if (self){
        self.prescriptionList = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(void) visitDoctor:(Doctor*)d{
    
}

-(void) requestMedication:(Doctor*)d andsymptom:(NSString*)symptom{
    NSString *prescription = [d createPrescription:(symptom)];
    [self.prescriptionList addObject:(prescription)];
}

@end
