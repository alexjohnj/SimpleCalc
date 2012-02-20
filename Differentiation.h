//
//  Differentiation.h
//
//  Created by Alex Jackson on 03/02/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Differentiation : NSObject

@property (assign) IBOutlet NSTextField *plusc;
@property (assign) IBOutlet NSTextField *power;
@property (assign) IBOutlet NSTextField *prex;
@property (assign) IBOutlet NSTextField *x;
@property (assign) IBOutlet NSTextField *answerField;


- (IBAction)differentiate:(id)sender;
- (IBAction)integrate:(id)sender;

@end