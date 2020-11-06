//
//  AppDelegate.m
//  CMPE320_Assignment3
//
//  Created by Oliver Logush on 2020-11-02.
//  Copyright © 2020 Oliver Logush. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize Close;




- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    if(Close.isEnabled) {
        NSLog(@"yes");
    } else {
        NSLog(@"No");
    }
    
    
    
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
