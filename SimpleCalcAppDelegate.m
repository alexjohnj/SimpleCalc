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

static NSString * const statusBarModeKey = @"statusBarMode";

-(void)applicationDidFinishLaunching:(NSNotification *)notification{
    
}

-(BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender{
    if([[NSUserDefaults standardUserDefaults] boolForKey:statusBarModeKey])
        return NO;
    
    else 
        return YES;
}

@end
