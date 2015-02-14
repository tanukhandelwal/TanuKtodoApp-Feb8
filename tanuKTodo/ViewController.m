//
//  ViewController.m
//  tanuKTodo
//
//  Created by Tanu Khandelwal on 2/6/15.
//  Copyright (c) 2015 UW PCE learning. All rights reserved.
//

#import "ViewController.h"
#import "TodoList.h"
#import "TodoItem.h"




@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource=self;
    self.tableView.rowHeight = 50;
    self.todoList = [[TodoList alloc]init];

    }

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView;
{
    NSArray *array = [self.todoList allItems];
    return [array count];
    
}

-(NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSTableCellView *cell = [tableView makeViewWithIdentifier:@"Cell" owner:nil];
    
//    //Get a item in an array(arr) and get the title of the item tat you got and assign to the cell
//    //Cell's textfield is equal to the string title
    
    NSArray *arr = [self.todoList allItems];
    TodoItem *myItem =   arr[row];
    NSString *myString = myItem.title;
    cell.textField.stringValue= myString;
    
    return cell;
}

- (IBAction)addItems:(NSButton *)sender {
    NSString *inputString = self.inputItem.stringValue;
    [self.todoList addItemWithTitle:inputString];
    [self.tableView reloadData];
    self.inputItem.stringValue = @"";

    
}


- (IBAction)removeItem:(id)sender {
    NSString *removeString = self.inputItem.stringValue;
    TodoItem *noItem = [TodoItem todoItemWithTitle:removeString];
    if([self.todoList canRemoveItem:noItem])
    {
        [self.todoList removeItem :noItem];
   }
    [self.tableView reloadData];
    self.inputItem.stringValue = @"";
}






@end
