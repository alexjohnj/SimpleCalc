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
#pragma mark Object Methods
-(id)init{
    [super init];
    number = 0;
    return self;
}

-(void)dealloc{
    [super dealloc];
}
#pragma mark Setters & Getters
-(double)returnNumber{
    return number;
}
@end
