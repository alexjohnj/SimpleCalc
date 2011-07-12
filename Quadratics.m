//
//  Quadratics.m
//
//  Created by Alex Jackson on 03/02/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import "Quadratics.h"

@implementation Quadratics
@synthesize negFieldB, popup, posFieldB, fieldA, fieldC, answerField;

/*****If you don't know the quadratic equations is:
            x= -b±sqrt(b^2 - 4ac)
               ------------------
                        2a
 where a quadratic equations is ax^2 + bx + c = 0; 
 eg:
 x^2 + 6x + 5 = 0
 a = 1 (since x^2 is the same as 1x^2)
 b = 6
 c = 5
 
 so the equation looks like this:
 x = -6±sqrt(6^2 - 4*1*5)
    ----------------------
                2*1
 so x = -1 or x = -5
 For more info see: http://en.wikipedia.org/wiki/Quadratic_equation
*/

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
	negb = posb * -1; //this converts the number to it's negative form, if it posb is negative it becomes positive (since neg * neg = pos)
	c = [fieldC doubleValue];
	
	operation = [popup indexOfSelectedItem];
	if (operation == 0){
		posbsqred = posb * posb; //equivalent to squaring posb
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
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"autoCalcIsEnabled"])
        [answerField setDoubleValue:[self quadMe]];
}

@end
