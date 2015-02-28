//
//  AppDelegate.m
//  Test Application
//
//  Created by Cory Bohon on 9/29/14.
//  Copyright (c) 2014 Cory Bohon. All rights reserved.
//

#import "AppDelegate.h"
#import <ServiceManagement/ServiceManagement.h>

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    self.loginButton.state = [[NSUserDefaults standardUserDefaults] boolForKey:@"LoginEnabled"];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification
{
    // Insert code here to tear down your application
}

- (IBAction)loginButtonPressed:(NSButton *)sender
{
    if (!SMLoginItemSetEnabled((__bridge CFStringRef)@"com.martiancraft.Test-Application-Helper", [sender state])) {
        NSLog(@"Login Item Was Not Successful");
    }
    
    [[NSUserDefaults standardUserDefaults] setBool:[sender state] forKey:@"LoginEnabled"];
}

@end
