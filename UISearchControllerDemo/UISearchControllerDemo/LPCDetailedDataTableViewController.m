//
//  LPCDetailedDataTableViewController.m
//  UISearchControllerDemo
//
//  Created by 刘培策 on 16/10/29.
//  Copyright © 2016年 UniqueCe. All rights reserved.
//

#import "LPCDetailedDataTableViewController.h"

@interface LPCDetailedDataTableViewController ()

@end

@implementation LPCDetailedDataTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"详情数据";
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/



@end
