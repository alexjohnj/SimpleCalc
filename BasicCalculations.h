//
//  BasicCalculations.h
//
//  Created by Alex Jackson on 08/02/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BasicCalculations : NSObject

@property (assign) IBOutlet NSTextField *answerField;
@property (assign) IBOutlet NSTextField *numberField;
@property (assign) IBOutlet NSTextField *numberFieldtwo;
@property (assign) IBOutlet NSPopUpButton *operationPopup;

- (IBAction)calculateAnswer:(id)sender;
- (IBAction)SetDivisionMenu:(id)sender;
- (IBAction)SetSubtractionMenu:(id)sender;
- (IBAction)setAdditionMenu:(id)sender;
- (IBAction)setMultiplicationMenu:(id)sender;
- (IBAction)squareNumber:(id)sender;
- (IBAction)operationDidChange:(id)sender;

-(double)calculate;

@end