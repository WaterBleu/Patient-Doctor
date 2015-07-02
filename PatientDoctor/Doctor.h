//
//  Doctor.h
//  PatientDoctor
//
//  Created by Jeff Huang on 2015-07-02.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import "People.h"

@class Patient;
@interface Doctor : People

@property (nonatomic, assign) NSString *specialization;
@property (nonatomic, strong) NSMutableArray *acceptedPatient;

-(void) acceptPatient:(Patient*) p;
-(NSString*) createPrescription:(NSString*) symptom;
-(instancetype) init;

@end
