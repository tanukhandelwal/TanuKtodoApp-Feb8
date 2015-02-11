//
//  ViewController.h
//  tanuKTodo
//
//  Created by Tanu Khandelwal on 2/6/15.
//  Copyright (c) 2015 UW PCE learning. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@class TodoItem;
@class TodoList;



@interface ViewController : NSViewController <NSTableViewDataSource,NSTableViewDelegate>

@property (strong) IBOutlet NSTextField *inputItem;
@property (strong) IBOutlet NSButton *addItems;
@property (strong) IBOutlet NSButton *removeItems;
@property (strong) IBOutlet NSButton *allowDuplicates;

@property (strong) IBOutlet NSTableView *tableView;


//Because I want View controller to be the owner of the list
//you always a strong hold
@property(strong, nonatomic)TodoList *todoList;



@end

