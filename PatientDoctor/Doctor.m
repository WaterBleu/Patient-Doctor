//
//  Doctor.m
//  PatientDoctor
//
//  Created by Jeff Huang on 2015-07-02.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import "People.h"
#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

-(void) acceptPatient:(Patient*) p{
    NSString *healthCareNumer = p.healthCareNumber;
    bool onFile = false;
    if(healthCareNumer != NULL){
        for(NSString *s in _acceptedPatient){
            if(s == healthCareNumer){
                NSLog(@"Patient on file");
                onFile = true;
            }
        }
        if(!onFile){
            [_acceptedPatient addObject:healthCareNumer];
            NSLog(@"Patient accepted");
        }
    }
    else
        NSLog(@"Patient rejected");
    
}

-(NSString*) createPrescription:(NSString*) symptom{
    NSMutableString *prescription = [[NSMutableString alloc] init];
    [prescription appendFormat:@"This is prescription for %@", symptom];
    NSLog(@"%@", prescription);

    [self.prescriptionList addObject:prescription];
    return prescription;
}

-(instancetype) init{
    self = [super init];
    
    if (self){
        self.prescriptionList = [[NSMutableArray alloc] init];
        self.acceptedPatient = [[NSMutableArray alloc] init];
    }
    
    return self;
}

@end
