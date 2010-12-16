//
//  CalcAppDelegate.m
//  Calc
//
//  Created by Tom Gallacher on 16/11/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "CalcAppDelegate.h"


@implementation CalcAppDelegate

@synthesize window;
@synthesize labelValue;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
}

- (id)init {
	calc = [[CalcModel alloc] init];
	return self;
} 

-(void)dealloc {
	[calc release];
	[super dealloc];
}

- (IBAction)add:(id)sender {
	[calc operatorAction:addOperator];
}

- (IBAction)subtract:(id)sender {
	[calc operatorAction:subtractOperator];
}

- (IBAction)multiply:(id)sender {
	[calc operatorAction:multiplyOperator];
}

- (IBAction)divide:(id)sender {
	[calc operatorAction:devideOperator];
}

- (IBAction)clear:(id)sender {
	[calc operatorAction:clearOperator];
	[self setLabel];
}

- (IBAction)calculate:(id)sender {
	[calc doArithmetic];
	[self setLabel];
}

-(IBAction)getValue:(id)sender {
	NSString *buttonValue = [sender title];
	[calc numberInput:buttonValue];
	[self setLabel];
	[buttonValue release];
	
}

- (void)setLabel {
	labelValue = [NSString stringWithFormat:@"%G", [calc accumulatorValue]];
	[label setStringValue:labelValue];
}


- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender
{
	return YES;
}

@end
