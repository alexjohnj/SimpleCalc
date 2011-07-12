//
//  AverageModel.m
//  SimpleCalc
//
//  Created by Alex Jackson on 07/05/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import "AverageModel.h"


@implementation AverageModel
@synthesize number;

//probably should just merge the model into the AverageController class, kind of a waste of space

#pragma mark Object Methods
-(id)init{
    [super init];
    number = 0;
    return self;
}

-(void)dealloc{
    [super dealloc];
}
@end
