//
//  SWAppDelegate.m
//  WWDC Video Search
//
//  Created by Simon Whitaker on 26/12/2013.
//  Copyright (c) 2013 Simon Whitaker. All rights reserved.
//

#import "SWAppDelegate.h"
#import "SWMainWindowController.h"

@interface SWAppDelegate() <NSTextFieldDelegate, NSTextDelegate>
@property (nonatomic) IBOutlet SWMainWindowController *mainWindowController;
@end

@implementation SWAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Configure the search field
    self.searchField.delegate = self;
    [self.searchField becomeFirstResponder];
}

#pragma mark - NSTextFieldDelegate methods

- (void)controlTextDidChange:(NSNotification *)notification {
    NSTextView *textView = (NSTextView*)(notification.userInfo[@"NSFieldEditor"]);
    self.mainWindowController.searchTerm = textView.textStorage.string;
}

@end
