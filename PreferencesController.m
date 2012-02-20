//
//  PreferencesController.m
//  SimpleCalc
//
//  Created by Alex Jackson on 27/04/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import "PreferencesController.h"

@implementation PreferencesController

@synthesize autoCalcCheck;

#pragma mark Initialisation Methods
-(id)init{
    if (![super initWithWindowNibName:@"Preferences"]) 
        return nil;
    
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
}

@end
