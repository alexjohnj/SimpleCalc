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
-(double)calculate{ //the main method for calculating sums, pretty self explanitory
    double num[2], answer;
	int operation;
	
	num[1] = [numberField doubleValue];
	num[2] = [numberFieldtwo doubleValue];
    
	operation = [operationPopup indexOfSelectedItem];
	if (operation == 0)
		answer = num[1] + num[2];
	else if (operation == 1)
		answer = num[1] - num[2];
	else if (operation == 2)
		answer = num[1] * num[2];
	else 
		answer = num[1] / num[2];
    
    return answer;
}
#pragma mark Button Code
- (IBAction)calculateAnswer:(id)sender {
	[answerField setDoubleValue:[self calculate]]; 
}

- (IBAction)SetDivisionMenu:(id)sender { //checks to see if autocalc is enabled and if it isn't, doesn't do anything
	[operationPopup selectItemAtIndex:3];    
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"autoCalcIsEnabled"] == YES)
        [answerField setDoubleValue:[self calculate]];
    else
        return;
        
}

- (IBAction)SetSubtractionMenu:(id)sender {
	[operationPopup selectItemAtIndex:1];
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"autoCalcIsEnabled"] == YES)
    [answerField setDoubleValue:[self calculate]];
    else
        return;
    
}

- (IBAction)setAdditionMenu:(id)sender {
	[operationPopup selectItemAtIndex:0];  
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"autoCalcIsEnabled"] == YES)
    [answerField setDoubleValue:[self calculate]];
    else 
        return;
}

- (IBAction)setMultiplicationMenu:(id)sender {
	[operationPopup selectItemAtIndex:2];
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"autoCalcIsEnabled"] == YES)
    [answerField setDoubleValue:[self calculate]];
    else
        return;
}

#pragma mark Indecies Indices
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
-(void)controlTextDidChange:(NSNotification *)obj{ //this is used for autocalc. If autocalc is disabled, the method immediately terminates. Otherwise, as long as the text changes, the sum is constantly worked out. 
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"autoCalcIsEnabled"] == NO)
        return;
    else{           
           [answerField setDoubleValue:[self calculate]];
    }
}

-(IBAction)operationDidChange:(id)sender{
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"autoCalcIsEnabled"] == NO)
        return;
    else{
    [answerField setDoubleValue:[self calculate]];
    }  
}

@end
