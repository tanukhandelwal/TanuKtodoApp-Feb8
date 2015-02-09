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

@property (weak) IBOutlet NSTextField *inputItem;
@property (weak) IBOutlet NSButton *addItems;
@property (weak) IBOutlet NSButton *removeItems;
@property (weak) IBOutlet NSButton *allowDuplicates;

@property (weak) IBOutlet NSTableView *tableView;
@property NSMutableArray *items;
@property(strong, nonatomic)TodoItem *todoItem;
@property(weak, nonatomic)TodoList *todoList;


@end

