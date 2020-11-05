//
//  ViewController.h
//  CMPE320_Assignment3
//
//  Created by Oliver Logush on 2020-11-02.
//  Copyright © 2020 Oliver Logush. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#include <dlfcn.h>
#include "Libraries/Fraction.h"
#include <sstream>


@interface ViewController : NSViewController

@property (strong, nonatomic) IBOutlet NSTextField *NumeratorOne;

@property (strong, nonatomic) IBOutlet NSTextField *DenominatorOne;

@property (strong) IBOutlet NSTextField *NumeratorTwo;

@property (strong) IBOutlet NSTextField *DenominatorTwo;



@property (strong) IBOutlet NSTextField *Output;


@property (strong, nonatomic) IBOutlet NSPopUpButton *OperandSelector;



- (IBAction)Equals:(NSButton *)sender;

- (IBAction)TextDidChange:(id)sender;

- (BOOL)isInt:(NSTextField *)stringToCheck;

- (void)keyDown:(NSEvent *)theEvent;

- (BOOL)acceptFirstResponder;

- (void)mouseDown:(NSEvent *)event;

- (void)keyUp:(NSEvent *)event;

@end

