//
//  Factorial.m
//  SimpleCalc
//
//  Created by Alex Jackson on 27/04/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import "Factorial.h"

@implementation Factorial
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
            NSRunAlertPanel(@"Why can't I go any bigger?", 
                            @"The Maximum Number you can work out the factorial of is 170. Any higher will produce no answer and will slow your computer down.", 
                            @"OK",
                            nil, 
                            nil);
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"seenFactorialWarning"];
        }
    }
    [stringLengther release];
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"autoCalcIsEnabled"] == NO)
        return;
    else{
        [answerField setDoubleValue:[self factorialise]];
    }
}
#pragma mark Factorise Main Method
-(double)factorialise{
    double answer, g, number;
	number = [factorialField doubleValue];
	int counter = 1;
    
	answer = number;
	g = number;
	while (counter < number) {
		g = g - 1;
		answer = answer * g;
		counter++;
	}
    NSLog(@"%f", answer);
    return answer;
}
@end
