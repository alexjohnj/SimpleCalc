//
//  Quadratics.m
//
//  Created by Alex Jackson on 03/02/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import "Quadratics.h"

@implementation Quadratics
@synthesize numberFieldA, numberFieldB, numberFieldC;
@synthesize positiveXAnswerField, negativeXAnswerField;

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
    [self.positiveXAnswerField setDoubleValue:[self calculatePositiveX]];
    [self.negativeXAnswerField setDoubleValue:[self calculateNegativeX]];
}

#pragma mark Main Calculation Method

-(double)calculatePositiveX{
        double a, posb, negb, c, answer, answer2 = 0, posbsqred, root;
        a = [self.numberFieldA doubleValue]; 
        posb = [self.numberFieldB doubleValue];
        negb = posb * -1; //this converts the number to it's negative form, if it posb is negative it becomes positive (since neg * neg = pos)
        c = [self.numberFieldC doubleValue];
        posbsqred = posb * posb; //equivalent to squaring posb
        root = posbsqred - 4 * a * c;
        answer = negb + sqrt(root);
        answer2 = answer / (2 * a);
        return answer2;
}

-(double)calculateNegativeX{
    double a, posb, negb, c, answer, answer2 = 0, posbsqred, root;	
	a = [self.numberFieldA doubleValue]; 
	posb = [self.numberFieldB doubleValue];
	negb = posb * -1; //this converts the number to it's negative form, if it posb is negative it becomes positive (since neg * neg = pos)
	c = [self.numberFieldC doubleValue];
    posbsqred = posb * posb;
    root = posbsqred - 4 * a * c;
    answer = negb - sqrt(root);
    answer2 = answer / (2 * a);
    
    return answer2;
}

#pragma mark AutoCalc Methods
-(void)controlTextDidChange:(NSNotification *)obj{
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"autoCalcIsEnabled"]){
        [self.positiveXAnswerField setDoubleValue:[self calculatePositiveX]];
        [self.negativeXAnswerField setDoubleValue:[self calculateNegativeX]];
    }
}
@end