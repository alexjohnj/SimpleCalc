//
//  AverageController.m
//  SimpleCalc
//
//  Created by Alex Jackson on 07/05/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import "AverageController.h"


@implementation AverageController

#pragma mark Array Modifying Methods
-(IBAction)addNumber:(id)sender{
    NSWindow *window = [tableView window];
    BOOL editingEnded = [window makeFirstResponder:window];
    if(!editingEnded){ //this snippet attempts to end & save any editing that is currently taking place.
        return;
    }
    
    AverageModel *averages = [arrayController newObject];
    [arrayController addObject:averages];
    [arrayController rearrangeObjects];
    NSArray *a = [arrayController arrangedObjects]; //creates a copy of the array controller
    unsigned long int row = [a indexOfObjectIdenticalTo:averages];
    [tableView editColumn:0 row:row withEvent:nil select:YES]; //begins editing row where insert is taking place 
    [averages release];
}

-(IBAction)removeNumber:(id)sender{
    [arrayController removeObjectsAtArrangedObjectIndexes:[tableView selectedRowIndexes]];
    [self setAverage];
}
#pragma mark AutoCalc
-(void)controlTextDidEndEditing:(NSNotification *)obj{
    [self setAverage];
}

#pragma mark Setters & Getters
-(void)setAverage{
    double answer = 0;
    int i;
    AverageModel *tempAverages;
    for (i = 0; i < [numbersArray count]; i++){
        tempAverages = [numbersArray objectAtIndex:i];
        answer += [tempAverages number];
        tempAverages = nil; 
    }
    answer /= [numbersArray count];
    [self setValue:[NSNumber numberWithDouble:answer] forKey:@"average"];
}
-(double)average{
    return average;
}


@end
