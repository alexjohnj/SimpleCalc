//
//  SimpleCalcAppDelegate.m
//  SimpleCalc
//
//  Created by Alex Jackson on 26/09/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import "SimpleCalcAppDelegate.h"

@implementation SimpleCalcAppDelegate
@synthesize window;

static NSString *const autoCalcIsEnabled = @"autoCalcIsEnabled";
static NSString * const statusBarModeKey = @"statusBarMode";

-(void)applicationDidFinishLaunching:(NSNotification *)notification{
    
}

-(BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender{
    if([[NSUserDefaults standardUserDefaults] boolForKey:statusBarModeKey]) 
        return NO; //Since the checkbox for statusBarModeKey will be enabled (YES) then we have to return NO here. 
    
    else 
        return YES;
}

#pragma mark User Defaults Initialisation
+(void)initialize{
    NSArray *objectsArray = [[NSArray alloc] initWithObjects:[NSNumber numberWithBool:YES], [NSNumber numberWithBool:NO] ,nil];
    NSArray *keysArray = [[NSArray alloc] initWithObjects:autoCalcIsEnabled, statusBarModeKey, nil];
    NSDictionary *defaults = [[NSDictionary alloc] initWithObjects:objectsArray forKeys:keysArray];
    [[NSUserDefaults standardUserDefaults] registerDefaults:defaults];
    
    [defaults release];
    [objectsArray release];
    [keysArray release];
}
@end
