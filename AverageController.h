//
//  AverageController.h
//  SimpleCalc
//
//  Created by Alex Jackson on 07/05/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AverageModel.h"

@interface AverageController : NSObject {
    IBOutlet NSTableView *tableView;
    NSMutableArray *numbersArray;
    IBOutlet NSArrayController *arrayController;
    IBOutlet NSTextField *answerField;
    double average;
}
//Synthesised Accessors
@property (assign) IBOutlet NSTableView *tableView;
@property (assign) IBOutlet NSArrayController *arrayController;
@property (assign) IBOutlet NSTextField *answerField; 
@property (assign) double average;

//IBActions
-(IBAction)addNumber:(id)sender;
-(IBAction)removeNumber:(id)sender;
//Methods
-(void)calculateAverage;
@end
