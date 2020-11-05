//
//  AppDelegate.h
//  CMPE320_Assignment3
//
//  Created by Oliver Logush on 2020-11-02.
//  Copyright © 2020 Oliver Logush. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

- (void)keyDown:(NSEvent *)event;
@property (strong) IBOutlet NSMenuItem *Close;

@end

