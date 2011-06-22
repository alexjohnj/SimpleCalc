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
- (IBAction)calculate:(id)sender;
- (IBAction)popupDidChange:(id)sender;
- (double)quadMe;
@end
