//
//  ViewController.m
//  tanuKTodo
//
//  Created by Tanu Khandelwal on 2/6/15.
//  Copyright (c) 2015 UW PCE learning. All rights reserved.
//

#import "ViewController.h"
#import "TodoList.m"
#import "TodoItem.m"




@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource=self;
    self.tableView.rowHeight = 50;
    
    self.items = [NSMutableArray arrayWithObjects:
                                  @"Audi A6", @"BMW Z3",
                                  @"Audi Quattro", @"Audi TT", nil];
    }

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView;
{
    return [self.items count];
}

-(NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSTableCellView *cell = [tableView makeViewWithIdentifier:@"Cell" owner:nil];
    cell.textField.stringValue = [self.items objectAtIndex:row];
    return cell;
}

- (IBAction)addItems:(NSButton *)sender {
    
//    NSString *myString = self.inputItem.stringValue;
//    self.todoItem = [[TodoItem alloc] initWithTitle:myString];
//    [self.items addObject:self.todoItem];
//                    
    
}








@end
