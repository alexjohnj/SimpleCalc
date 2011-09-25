//
//  Quadratics.h
//
//  Created by Alex Jackson on 03/02/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@interface Quadratics : NSObject {
    IBOutlet NSTextField *numberFieldA;
    IBOutlet NSTextField *numberFieldB;
    IBOutlet NSTextField *numberFieldC;
    IBOutlet NSTextField *positiveXAnswerField;
    IBOutlet NSTextField *negativeXAnswerField;
}
@property (assign) IBOutlet NSTextField *numberFieldA;
@property (assign) IBOutlet NSTextField *numberFieldB;
@property (assign) IBOutlet NSTextField *numberFieldC;
@property (assign) IBOutlet NSTextField *positiveXAnswerField;
@property (assign) IBOutlet NSTextField *negativeXAnswerField;

-(IBAction)calculate:(id)sender;
-(double)calculatePositiveX;
-(double)calculateNegativeX;
@end
