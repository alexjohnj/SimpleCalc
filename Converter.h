//
//  Converter.h
//
//  Created by Alex Jackson on 08/02/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Converter : NSObject {
    IBOutlet NSTextField *answerField;
    IBOutlet id numberField;
}
- (IBAction)ctof:(id)sender;
- (IBAction)ftoc:(id)sender;
- (IBAction)cmtom:(id)sender;
- (IBAction)mtocm:(id)sender;
- (IBAction)yardtom:(id)sender;
- (IBAction)mtoyard:(id)sender;
- (IBAction)feettom:(id)sender;
- (IBAction)mtofeet:(id)sender;
- (IBAction)feettoyard:(id)sender;
- (IBAction)yardtofeet:(id)sender;
- (IBAction)ktoc:(id)sender;
- (IBAction)ctok:(id)sender;
@end
