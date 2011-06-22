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
@interface AppController : NSObject {
@private
    PreferencesController *preferenceController;
    IBOutlet NSWindow *mainWindow;
    NSStatusItem *statusItem;

}
-(IBAction)showPreferences:(id)sender;
- (void)toggleVisibilityOfMainWindow:(id)sender;
-(void)statusBarItem;
@end
