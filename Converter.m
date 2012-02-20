//
//  Converter.m
//
//  Created by Alex Jackson on 08/02/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

/****THIS CODE REALLY NEEDS CLEANING UP & LOCALISING
 If someone would do that, that would be great!***/

#import "Converter.h"
@implementation Converter

@synthesize numberField, answerField;
#pragma mark Conversions Code
//I'm pretty certain these methods are self explanatory.

- (IBAction)ctof:(id)sender {
	
	float number, answer;
	
	number = [numberField floatValue];
	
	answer = (number * 9) / 5;
	answer = answer + 32;
	
	[answerField setStringValue: [NSString stringWithFormat:@"%2.05g˚F", answer]];
    
}

- (IBAction)ftoc:(id)sender {
    float number, answer;
	
	number = [numberField floatValue];
	
	answer = 5 * (number - 32);
	answer = answer/9;
	
	[answerField setStringValue: [NSString stringWithFormat:@"%2.05g˚C", answer]];
}

- (IBAction)cmtom:(id)sender{
	double num, ans;
	num = [numberField doubleValue];
	ans = num / 100;
	
	[answerField setStringValue: [NSString stringWithFormat:@"%2.05gm", ans]];
}

-(IBAction)mtocm:(id)sender{
	double num, ans;
	
	num = [numberField doubleValue];
	
	ans = num * 100;
	
	[answerField setStringValue:[NSString stringWithFormat:@"%2.05gcm", ans]];
}

-(IBAction)yardtom:(id)sender{
	double number, answer;
    
	number = [numberField doubleValue];
	answer = number * 0.9144;
    
	[answerField setStringValue: [NSString stringWithFormat:@"%2.05gm", answer]];
	
}

-(IBAction)mtoyard:(id)sender{
	double number, answer;
	
	number = [numberField doubleValue];
	answer = number * 1.0936133;
	[answerField setStringValue: [NSString stringWithFormat:@"%2.05g Yards", answer]];
}

- (IBAction)feettom:(id)sender{
	
	double number, answer;
	
	number = [numberField doubleValue];
	answer = number * 0.3048;
	
	[answerField setStringValue: [NSString stringWithFormat:@"%2.05gm", answer]];
}

- (IBAction)mtofeet:(id)sender{
	
	double number, answer;
	
	number = [numberField doubleValue];
	answer = number *  3.2808399;
	
	[answerField setStringValue: [NSString stringWithFormat: @"%2.05g Feet", answer]];	
}

- (IBAction)feettoyard:(id)sender{
	double number, answer; 
	
	number = [numberField doubleValue];
	answer = number * 0.333333333;
	
	[answerField setStringValue: [NSString stringWithFormat:@"%2.05g Yards", answer]];
}

- (IBAction)yardtofeet:(id)sender{
	
	double number, answer; 
	
	number = [numberField doubleValue];
	answer = number * 3;
	
	[answerField setStringValue: [NSString stringWithFormat:@"%2.05g Feet", answer]];
}

- (IBAction)ktoc:(id)sender{
	double number, answer;
	
	number = [numberField doubleValue];
	answer = number - 273.15;
	
	[answerField setStringValue: [NSString stringWithFormat:@"%2.05g ˚C", answer]];
}

- (IBAction)ctok:(id)sender{
	double number, answer; 
	
	number = [numberField doubleValue];
	answer = number + 273.15;
	
	[answerField setStringValue: [NSString stringWithFormat:@"%2.05g ˚K", answer]];
}
@end