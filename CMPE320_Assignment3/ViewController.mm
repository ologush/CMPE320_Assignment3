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
    void* handle = dlopen("libFraction.dylib", RTLD_GLOBAL);
    
    if(!handle) {
        NSLog(@"cant open lib");
    }
    
    
    
    
    
    
    Fraction_creator* NewFraction = (Fraction_creator*)dlsym(handle, "NewFraction");
    
    Fraction* test = NewFraction();
    
    Fraction test2 = Fraction(1, 2);
    
    cout << test2 << endl;
    
    
    //char* (*test)(void) = dlsym(handle, "NewFraction");
    
   
    if(test) {
        NSLog(@"great success");
    }
    
    
  
}




- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)SelectOperator:(NSPopUpButton *)sender {
}

- (IBAction)Equals:(NSButton *)sender {
    
    numeratorOne = [NumeratorOne intValue];
    numeratorTwo = [NumeratorTwo intValue];
    
    denominatorOne = [DenominatorOne intValue];
    denominatorTwo = [DenominatorTwo intValue];
    
    Fraction* FractionOne = new Fraction(numeratorOne, denominatorOne);
    Fraction* FractionTwo = new Fraction(numeratorTwo, denominatorTwo);
    
    //FractionOne++;
    //++FractionOne;
    
    cout << "Fraction One: " << FractionOne << endl;
    cout << "Fraction Two: " << FractionTwo << endl;
    
    Fraction result;
   
    
    int operand = [OperandSelector selectedTag];
    
    cout << operand << endl;
    
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
    
    resultStream << result << endl;
    
    //string resultString = resultStream.str();
    
    NSString* resultString = [NSString stringWithUTF8String:resultStream.str().c_str()];
    
    
    
    Output.stringValue = resultString;
    
    
    
    
    
}






@end
