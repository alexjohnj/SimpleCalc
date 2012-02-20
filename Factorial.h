//
//  Factorial.h
//  SimpleCalc
//
//  Created by Alex Jackson on 27/04/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Factorial : NSObject

@property (assign) int tries;

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *factorialField;
@property (assign) IBOutlet NSTextField *answerField;

-(IBAction)calculate:(id)sender;

-(double)factorialise;

@end