//
//  TodoItem.m
//  tanuKTodo
//
//  Created by Tanu Khandelwal on 2/6/15.
//  Copyright (c) 2015 UW PCE learning. All rights reserved.
//

#import "TodoItem.h"

@implementation TodoItem

-(instancetype)initWithTitle:(NSString*)title;
{
    self = [super init];
    if(self)
    {
        _title = title;
        _content = @"";
        
    }
    return self;
}

-(instancetype)int
{
    return [self initWithTitle:@""];
}

+(instancetype)initItemWithTitle:(NSString*)title
{
    TodoItem *item = [[self alloc] init];
    item.title = title;
    NSLog(@"This is initialized");
    return item;
}

@end
