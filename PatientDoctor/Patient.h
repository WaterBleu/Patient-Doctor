//
//  Patient.h
//  PatientDoctor
//
//  Created by Jeff Huang on 2015-07-02.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import "People.h"

@class Doctor;
@interface Patient : People

-(void) visitDoctor:(Doctor*)d;
-(void) requestMedication:(Doctor*)d andsymptom:(NSString*)symptom;

@end
