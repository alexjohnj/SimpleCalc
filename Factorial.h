//
//  Factorial.h
//  SimpleCalc
//
//  Created by Alex Jackson on 27/04/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Factorial : NSObject {
@private
    IBOutlet id factorialField;
    IBOutlet id answerField;
    
    IBOutlet NSWindow *window;
    
    int tries;
}
@property (assign) IBOutlet NSWindow *window;

-(IBAction)calculate:(id)sender;
-(double)factorialise;

@end
