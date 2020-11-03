//
//  ViewController.h
//  CMPE320_Assignment3
//
//  Created by Oliver Logush on 2020-11-02.
//  Copyright © 2020 Oliver Logush. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#include <dlfcn.h>


@interface ViewController : NSViewController

@property (strong, nonatomic) IBOutlet NSTextField *NumeratorOne;

@property (strong, nonatomic) IBOutlet NSTextField *DenominatorOne;

@property (strong) IBOutlet NSTextField *NumeratorTwo;

@property (strong) IBOutlet NSTextField *DenominatorTwo;

@property (strong) IBOutlet NSTextFieldCell *NumeratorOneCell;

@property (strong) IBOutlet NSNumberFormatter *NumOneValue;

@property (strong) IBOutlet NSNumberFormatter *DenomOneValue;


@property (strong) IBOutlet NSNumberFormatter *NumTwoValue;


@property (strong) IBOutlet NSNumberFormatter *DenomTwoValue;

@property (strong) IBOutlet NSTextField *Output;



- (IBAction)SelectOperator:(NSPopUpButton *)sender;


- (IBAction)Equals:(NSButton *)sender;




@end

