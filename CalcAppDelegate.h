//
//  CalcAppDelegate.h
//  Calc
//
//  Created by Tom Gallacher on 16/11/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CalcModel.h"

@interface CalcAppDelegate : NSObject <NSApplicationDelegate> {
	
	NSWindow *window;
	CalcModel *calc;
	
	IBOutlet NSTextField *label;
	NSString *labelValue;
}

- (IBAction)add:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)divide:(id)sender;
- (IBAction)calculate:(id)sender;
- (IBAction)clear:(id)sender;
- (IBAction)getValue:(id)sender;
- (void)setLabel;

@property (assign) IBOutlet NSWindow *window;
@property (retain) NSString *labelValue;

@end
