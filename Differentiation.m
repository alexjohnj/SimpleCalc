//
//  Differentiation.m
//
//  Created by Alex Jackson on 03/02/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import "Differentiation.h"

@implementation Differentiation
@synthesize prex, plusc, power, x, answerField;
- (IBAction)differentiate:(id)sender {
	double pre, pow;
	[x setStringValue:@"X"];
	[plusc setStringValue:@" "];
	
	pre = [prex doubleValue];
	pow = [power doubleValue];
	
	pre = pow * pre;
	pow = pow - 1;
	
	[prex setDoubleValue:pre];
	[power setDoubleValue:pow];
	
	if (pow == 0){
		[x setStringValue:@" "];}
    
}

- (IBAction)integrate:(id)sender {
    [x setStringValue:@"X"];
	[plusc setStringValue:@" "];
    double pre, pwr;
	
	pre = [prex doubleValue];
	pwr = [power doubleValue];
	
	pre = pre / (pwr + 1);
	pwr = pwr + 1;
	
	[prex setDoubleValue:pre];
	[power setDoubleValue:pwr];
	[plusc setStringValue:@"+C"];
	
}
@end
