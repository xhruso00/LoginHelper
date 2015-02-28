//
//  AppDelegate.m
//  Test Application Helper
//
//  Created by Cory Bohon on 9/29/14.
//  Copyright (c) 2014 Cory Bohon. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSArray *pathComponents = [[[NSBundle mainBundle] bundlePath] pathComponents];
    pathComponents = [pathComponents subarrayWithRange:NSMakeRange(0, [pathComponents count] - 4)];
    NSString *path = [NSString pathWithComponents:pathComponents];
    [[NSWorkspace sharedWorkspace] launchApplication:path];
    [NSApp terminate:nil];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification
{

}

@end
