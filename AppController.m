//
//  AppController.m
//  SimpleCalc
//
//  Created by Alex Jackson on 27/04/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import "AppController.h"


@implementation AppController
#pragma mark Preferences Window Code

-(IBAction)showPreferences:(id)sender{
    if(!preferenceController){
        preferenceController = [[PreferencesController alloc] init];
    }
    [preferenceController showWindow:self];
}

- (void)dealloc
{   
    [preferenceController release];
    [super dealloc];
}
#pragma mark Status Bar Item Code
-(void)awakeFromNib
{
    [self statusBarItem];
}

- (void)toggleVisibilityOfMainWindow:(id)sender {
    if ([mainWindow isKeyWindow]) {
        [mainWindow orderOut:nil];
        return;
    }
    [mainWindow makeKeyAndOrderFront:nil];
    [NSApp activateIgnoringOtherApps:YES];
}
-(void)statusBarItem{
    statusItem = [[[NSStatusBar systemStatusBar] 
                   statusItemWithLength:NSSquareStatusItemLength] 
                  retain];
    [statusItem setImage: [NSImage imageNamed:@"MenuBarItem.png"]];
    [statusItem setEnabled:YES];
    [statusItem setHighlightMode:YES];
    [statusItem setTarget:self];
    [statusItem setAction:@selector(toggleVisibilityOfMainWindow:)];
}
#pragma mark User Defaults Initialisation
+(void)initialize{
    NSDictionary *defaults = [NSDictionary dictionaryWithObject:
                              [NSNumber numberWithBool:NO] 
                            forKey:@"autoCalcIsEnabled"];
    [[NSUserDefaults standardUserDefaults] registerDefaults:defaults];
}

@end
