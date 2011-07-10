//
//  Quadratics.h
//
//  Created by Alex Jackson on 03/02/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@interface Quadratics : NSObject {
    IBOutlet NSTextField *answerField;
    IBOutlet NSTextField *fieldA;
    IBOutlet NSTextField *fieldC;
    IBOutlet NSTextField *negFieldB;
    IBOutlet NSPopUpButton *popup;
    IBOutlet NSTextField *posFieldB;
}
@property (assign) IBOutlet NSTextField *answerField;
@property (assign) IBOutlet NSTextField *fieldA;
@property (assign) IBOutlet NSTextField *fieldC;
@property (assign) IBOutlet NSTextField *negFieldB;
@property (assign) IBOutlet NSTextField *posFieldB;
@property (assign) IBOutlet NSPopUpButton *popup;

- (IBAction)calculate:(id)sender;
- (IBAction)popupDidChange:(id)sender;
- (double)quadMe;
@end
