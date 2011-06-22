//
//  Differentiation.h
//
//  Created by Alex Jackson on 03/02/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Differentiation : NSObject {
    IBOutlet NSTextField *plusc;
    IBOutlet id power;
    IBOutlet id prex;
    IBOutlet NSTextField *x;
	IBOutlet NSTextField *answerField;
}
- (IBAction)differentiate:(id)sender;
- (IBAction)integrate:(id)sender;
@end
