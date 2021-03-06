//
//  BasicCalculations.m
//
//  Created by Alex Jackson on 08/02/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import "BasicCalculations.h"

@implementation BasicCalculations
@synthesize operationPopup, numberField, numberFieldtwo, answerField;

#pragma mark Main Calculate Method

static NSString *const autoCalcIsEnabledKey = @"autoCalcIsEnabled";

-(double)calculate{ //the main method for calculating sums, pretty self explanatory
    double numOne, numTwo, answer;
	int operation;
	
	numOne = [numberField doubleValue];
	numTwo = [numberFieldtwo doubleValue];
    
	operation = [operationPopup indexOfSelectedItem];
	if (operation == 0)
		answer = numOne + numTwo;
	else if (operation == 1)
		answer = numOne - numTwo;
	else if (operation == 2) 
		answer = numOne * numTwo;
	else 
		answer = numOne / numTwo;
    
    return answer;
}
#pragma mark Button Code
- (IBAction)calculateAnswer:(id)sender {
	[answerField setDoubleValue:[self calculate]]; 
}

- (IBAction)SetDivisionMenu:(id)sender { //checks to see if autocalc is enabled 
	[operationPopup selectItemAtIndex:3];  
    
    if([[NSUserDefaults standardUserDefaults] boolForKey:autoCalcIsEnabledKey]) //if it is enabled, calculate: method is called
        [answerField setDoubleValue:[self calculate]]; 
}

- (IBAction)SetSubtractionMenu:(id)sender {
	[operationPopup selectItemAtIndex:1];
    
    if([[NSUserDefaults standardUserDefaults] boolForKey:autoCalcIsEnabledKey])
        [answerField setDoubleValue:[self calculate]];
}

- (IBAction)setAdditionMenu:(id)sender {
	[operationPopup selectItemAtIndex:0];  
    if([[NSUserDefaults standardUserDefaults] boolForKey:autoCalcIsEnabledKey])
        [answerField setDoubleValue:[self calculate]];
}

- (IBAction)setMultiplicationMenu:(id)sender {
	[operationPopup selectItemAtIndex:2];
    
    if([[NSUserDefaults standardUserDefaults] boolForKey:autoCalcIsEnabledKey])
        [answerField setDoubleValue:[self calculate]];
}

#pragma mark Indices
- (IBAction)squareNumber:(id)sender {
	double num2, answer;
    
	num2 = [numberFieldtwo doubleValue];
	answer = num2 * num2;
    
	[answerField setDoubleValue:answer];
}

- (IBAction)rootNumber:(id)sender {
    double num2, answer;
	num2 = [numberFieldtwo doubleValue];
	answer = sqrt(num2);
	
	[answerField setDoubleValue:answer];
}

#pragma mark AutoCalc Code
-(void)controlTextDidChange:(NSNotification *)obj{ //this is used for autocalc. If autocalc is disabled, 
                                                    //then nothing happens 
                                                    //Otherwise, every time the text changes 
                                                    //the sum is constantly worked out. 
    if ([[NSUserDefaults standardUserDefaults] boolForKey:autoCalcIsEnabledKey])
        [answerField setDoubleValue:[self calculate]];
}

-(IBAction)operationDidChange:(id)sender{
    if ([[NSUserDefaults standardUserDefaults] boolForKey:autoCalcIsEnabledKey])
        [answerField setDoubleValue:[self calculate]];
}
@end