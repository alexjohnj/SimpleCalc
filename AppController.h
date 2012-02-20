//
//  AppController.h
//  SimpleCalc
//
//  Created by Alex Jackson on 27/04/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
// 
// V3.3.1

#import <Foundation/Foundation.h>
#import "PreferencesController.h"

@interface AppController : NSObject 

@property (retain) NSStatusItem *statusItem;
@property (retain) PreferencesController *preferenceController;

@property (assign) IBOutlet NSWindow *mainWindow;
@property (assign) IBOutlet NSTextField *positiveXLabel;
@property (assign) IBOutlet NSTextField *negativeXLabel;
@property (assign) IBOutlet NSTextFieldCell *positiveXTextFieldCell;
@property (assign) IBOutlet NSTextFieldCell *negativeXTextFieldCell;

-(IBAction)showPreferences:(id)sender;
-(IBAction)toggleStatusBarMode:(id)sender;

-(void)toggleVisibilityOfMainWindow:(id)sender;
-(void)statusBarItem;

@end