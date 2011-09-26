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

NSString * const autoCalcIsEnabled = @"autoCalcIsEnabled";
NSString * const statusBarMode = @"statusBarMode";

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
#pragma mark AwakeFromNib
-(void)awakeFromNib
{
    if([[NSUserDefaults standardUserDefaults] boolForKey:statusBarMode])
        [self statusBarItem]; //This creates a status bar item on launch
    
    if(floor(NSAppKitVersionNumber) <= NSAppKitVersionNumber10_6){
        [positiveXLabel setStringValue:@"+x="];
        [negativeXLabel setStringValue:@"-x="];
        [positiveXTextFieldCell setPlaceholderString:@"+x"];
        [negativeXTextFieldCell setPlaceholderString:@"-x"];
    }    
}

#pragma mark - StatusBar Item Code
- (void)toggleVisibilityOfMainWindow:(id)sender {
    if ([mainWindow isKeyWindow]) { //This method is used to show/hide the window when the status item is clicked
        [mainWindow orderOut:nil];
        return;
    }
    [mainWindow makeKeyAndOrderFront:nil];
    [NSApp activateIgnoringOtherApps:YES];
}
-(void)statusBarItem{
    statusItem = [[[NSStatusBar systemStatusBar] 
                   statusItemWithLength:NSSquareStatusItemLength]  
                  retain];                                          //When in doubt call retain! Don't know if this should be retain or what 
                                                                    //but it shuts up the static analyser. 
                                                                    //(Comment it out and run the static analyser to see what I mean).
    [statusItem setImage: [NSImage imageNamed:@"MenuBarItem.png"]];
    [statusItem setEnabled:YES];
    [statusItem setHighlightMode:YES];
    [statusItem setTarget:self];
    [statusItem setAction:@selector(toggleVisibilityOfMainWindow:)];
}
#pragma mark User Defaults Initialisation
+(void)initialize{
//    NSDictionary *defaults = [NSDictionary dictionaryWithObject:  //Use this method to register the defaults
//                              [NSNumber numberWithBool:YES] 
//                            forKey:@"autoCalcIsEnabled"];
    NSArray *objectsArray = [[NSArray alloc] initWithObjects:[NSNumber numberWithBool:YES], [NSNumber numberWithBool:NO] ,nil];
    NSArray *keysArray = [[NSArray alloc] initWithObjects:autoCalcIsEnabled, statusBarMode, nil];
    NSDictionary *defaults = [[NSDictionary alloc] initWithObjects:objectsArray forKeys:keysArray];
    [[NSUserDefaults standardUserDefaults] registerDefaults:defaults];
    
    [defaults release];
    [objectsArray release];
    [keysArray release];
}
@end
