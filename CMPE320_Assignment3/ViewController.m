//
//  ViewController.m
//  CMPE320_Assignment3
//
//  Created by Oliver Logush on 2020-11-02.
//  Copyright © 2020 Oliver Logush. All rights reserved.
//

#import "ViewController.h"
#include <dlfcn.h>

@implementation ViewController

@synthesize NumeratorOne;
@synthesize DenominatorOne;
@synthesize NumeratorTwo;
@synthesize DenominatorTwo;



@synthesize NumeratorOneCell;

@synthesize Output;



int numeratorOne;
int denominatorOne;

int numeratorTwo;
int denominatorTwo;

NSString *test = @"";


void *handle;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    handle = dlopen("/Libraries/libFraction.dylib", RTLD_LAZY);
    
   // *handle = dlopen("/lib/Fraction.dylib", RTLD_LAZY);
    
    
    

    // Do any additional setup after loading the view.
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
    
    int result;
    
    Output.stringValue = @"result";
    
    
    
}






@end
