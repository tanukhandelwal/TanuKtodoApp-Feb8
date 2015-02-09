//
//  TodoList.m
//  tanuKTodo
//
//  Created by Tanu Khandelwal on 2/6/15.
//  Copyright (c) 2015 UW PCE learning. All rights reserved.
//

#import "TodoList.h"
#import "TodoItem.h"
#import "ViewController.h"

@implementation TodoList

-(NSMutableArray*)allTitles
{
    NSMutableArray *myArray = [[NSMutableArray alloc] init];
    TodoItem *item = [[TodoItem alloc ]initWithTitle:@"Read OC"];
   // TodoItem *item = [[TodoItem alloc ]initWithTitle:self.];

    
    
    [myArray addObject: item];
    NSLog(@"%@",myArray);
    return myArray;
    
}

-(NSArray*)allItems
{
    NSArray *listArray = [NSArray arrayWithObject:self.allTitles];
    NSLog(@"%@",listArray);
    return listArray;
    
}




@end
