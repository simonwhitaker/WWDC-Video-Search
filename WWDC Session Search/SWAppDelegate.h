//
//  SWAppDelegate.h
//  WWDC Video Search
//
//  Created by Simon Whitaker on 26/12/2013.
//  Copyright (c) 2013 Simon Whitaker. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SWAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSSearchField *searchField;
@property (assign) IBOutlet NSTableView *tableView;

@end
