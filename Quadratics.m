//
//  Quadratics.m
//
//  Created by Alex Jackson on 03/02/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import "Quadratics.h"

@implementation Quadratics
@synthesize negFieldB, popup, posFieldB, fieldA, fieldC, answerField;
#pragma mark Button Methods
- (IBAction)calculate:(id)sender {
    [answerField setDoubleValue:[self quadMe]];
}

- (IBAction)popupDidChange:(id)sender {
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"autoCalcIsEnabled"] == NO)
        return;
    else
        [answerField setDoubleValue:[self quadMe]];
}
#pragma mark Main Calculation Method
-(double)quadMe{
    double a, posb, negb, c, answer, answer2 = 0, posbsqred, root;
	int operation;
	
	a = [fieldA doubleValue];
	posb = [posFieldB doubleValue];
	negb = posb * -1;
	c = [fieldC doubleValue];
	
	operation = [popup indexOfSelectedItem];
	if (operation == 0){
		posbsqred = posb * posb;
		root = posbsqred - 4 * a * c;
		answer = negb + sqrt(root);
		answer2 = answer / (2 * a);
	}
	
	else if (operation == 1){
		posbsqred = posb * posb;
		root = posbsqred - 4 * a * c;
		answer = negb - sqrt(root);
		answer2 = answer / (2 * a);
	}
    return answer2;
}
#pragma mark AutoCalc
-(void)controlTextDidChange:(NSNotification *)obj{
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"autoCalcIsEnabled"] == NO)
        return;
    else{
        [answerField setDoubleValue:[self quadMe]];
    }
}

@end
