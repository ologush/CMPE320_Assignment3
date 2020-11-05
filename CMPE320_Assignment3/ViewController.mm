//
//  ViewController.m
//  CMPE320_Assignment3
//
//  Created by Oliver Logush on 2020-11-02.
//  Copyright © 2020 Oliver Logush. All rights reserved.
//

#import "ViewController.h"
//#include <dlfcn.h>
//#include "Libraries/Fraction.h"

@implementation ViewController

@synthesize NumeratorOne;
@synthesize DenominatorOne;
@synthesize NumeratorTwo;
@synthesize DenominatorTwo;
@synthesize OperandSelector;

@synthesize Output;



int numeratorOne;
int denominatorOne;

int numeratorTwo;
int denominatorTwo;

NSString *test = @"";






- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Had to change C++ language dialect and C++ standard library in build settings
    
    
  
}




- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)TextDidChange:(id)sender {
    Output.stringValue = @"";
}

- (BOOL)isInt:(NSTextField *)stringToCheck {
    if([ (NSString *)stringToCheck intValue]) {
        return TRUE;
    }
    return FALSE;
}


- (IBAction)Equals:(NSButton *)sender {
    
    if(!([self isInt:NumeratorOne] && [self isInt:NumeratorTwo] && [self isInt:DenominatorOne] && [self isInt:DenominatorTwo])) {
        Output.stringValue = @"Please enter valid numbers";
        return;
    }
    
    numeratorOne = [NumeratorOne intValue];
    numeratorTwo = [NumeratorTwo intValue];
    
    denominatorOne = [DenominatorOne intValue];
    denominatorTwo = [DenominatorTwo intValue];
    
    
    
    Fraction* FractionOne;
    Fraction* FractionTwo;
    
    try {
        FractionOne = new Fraction(numeratorOne, denominatorOne);
        FractionTwo = new Fraction(numeratorTwo, denominatorTwo);
    } catch (FractionException e) {
        cout << e.what() << endl;
        Output.stringValue = @"Denominator cannot be zero";
        return;
        
    }
    
    Fraction result;
   
    int operand = [OperandSelector selectedTag];
    
    switch(operand) {
        case 0:
            result = *FractionOne + *FractionTwo;
            break;
        case 1:
            result = *FractionOne - *FractionTwo;
            break;
        case 2:
            result = *FractionOne * *FractionTwo;
            break;
        case 3:
            result = *FractionOne / *FractionTwo;
    }
    
    stringstream resultStream;
    
    if(result.numerator() == 0 || result.denominator() == 1) {
        resultStream << result.numerator() << endl;
    } else {
        resultStream << result << endl;
    }
    
    NSString* resultString = [NSString stringWithUTF8String:resultStream.str().c_str()];
    Output.stringValue = resultString;
}

- (void)keyDown:(NSEvent *)theEvent {
    cout << "a" << endl;
}

- (BOOL)acceptFirstResponder {
    return YES;
}

- (void)mouseDown:(NSEvent *)event {
    cout << "b" << endl;
}

- (void)keyUp:(NSEvent *)event {
    cout << "c" << endl;
}



@end
