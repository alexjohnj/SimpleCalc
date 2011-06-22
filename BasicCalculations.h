//
//  BasicCalculations.h
//
//  Created by Alex Jackson on 08/02/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BasicCalculations : NSObject {
    IBOutlet id answerField;
    IBOutlet id numberField;
    IBOutlet id numberFieldtwo;
    IBOutlet id operationPopup;
}
- (IBAction)calculateAnswer:(id)sender;
- (IBAction)SetDivisionMenu:(id)sender;
- (IBAction)SetSubtractionMenu:(id)sender;
- (IBAction)setAdditionMenu:(id)sender;
- (IBAction)setMultiplicationMenu:(id)sender;
- (IBAction)squareNumber:(id)sender;
- (IBAction)operationDidChange:(id)sender;
-(double)calculate;

@end
