//
//  Factorial.m
//  SimpleCalc
//
//  Created by Alex Jackson on 27/04/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import "Factorial.h"

@implementation Factorial
@synthesize window, answerField, factorialField;
#pragma mark Button Code
- (IBAction)calculate:(id)sender {	
	[answerField setDoubleValue:[self factorialise]];
}
#pragma mark AutoCalc Code
-(void)controlTextDidChange:(NSNotification *)obj{
    NSString *stringLengther = [[NSString alloc] initWithString:[factorialField stringValue]];
    if([stringLengther length] >= 3){
        NSBeep();
        [factorialField abortEditing];
        
        if([[NSUserDefaults standardUserDefaults] boolForKey:@"seenFactorialWarning"] == NO) //check to see if user has seen warning
            tries++; //if user hasn't, warning is displayed
        
        if(tries == 3 && [[NSUserDefaults standardUserDefaults] boolForKey:@"seenFactorialWarning"] == NO){ //check value of tries, and if user has seen warning
            NSAlert *noBiggerAlert = [NSAlert alertWithMessageText:@"Why can't I go any bigger?"
                                                     defaultButton:@"OK" 
                                                   alternateButton:nil 
                                                       otherButton:nil 
                                         informativeTextWithFormat:@"The Maximum Number you can work out the factorial of is 170. Any higher will produce no answer and will slow your computer down."];
            [noBiggerAlert beginSheetModalForWindow:window modalDelegate:self didEndSelector:nil contextInfo:nil];
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"seenFactorialWarning"];
        }
    }
    [stringLengther release];
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"autoCalcIsEnabled"])
        [answerField setDoubleValue:[self factorialise]];
}
#pragma mark Factorise Main Method
-(double)factorialise{
    double answer, g, number; //three variables, the users number, the answer and a copy of the users number (called g?). g will be decremented
	number = [factorialField doubleValue];
	int counter = 1; //a counter, for the while loop
    
	answer = number; //answer equals number so that we can multiply answer by g (the decremented number)
	g = number; //assigning g the value of number
	while (counter < number) {
		g = g - 1; //g is decreased by 1 so that we multiply be the next lowest number from the one the user typed
		answer = answer * g; //answer is multiplied by g to (for reason in above line)
		counter++;
	}
    return answer;
    /*
     More details:
     So factorials work by taking a number and multiplying it by every number below it. So if I want the factorial of the number 3 I do 3 * 2 * 1.
     In this code, 3 is the variable number, the number the user entered and g is the number below 3 (so in this case 2) and then the number beneath that, and the number beneath that for x number if times where x = number. Answer starts off with the value of number. It's then multiplied by the value of g - 1. And then again, and again until g = 1, since g decreases by 1 each time. Again, answer is multiplied x number of times. A good equation for working out factorials is:
     n! = n * (n - 1)!  (! = factorial)
     
     Confused? Just read the source code, it'll make more sense than my dodgy explanation. Not confused? Read the wikipedia article(http://en.wikipedia.org/wiki/Factorial) Then you'll be confused. 
     */
}
@end
