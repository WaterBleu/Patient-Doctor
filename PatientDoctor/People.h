//
//  People.h
//  PatientDoctor
//
//  Created by Jeff Huang on 2015-07-02.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject

@property (nonatomic, assign) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) NSString *healthCareNumber;
@property (nonatomic, strong) NSMutableArray *prescriptionList;

@end
