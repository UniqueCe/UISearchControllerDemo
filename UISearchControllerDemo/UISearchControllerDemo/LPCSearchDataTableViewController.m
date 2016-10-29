//
//  LPCSearchDataTableViewController.m
//  UISearchControllerDemo
//
//  Created by 刘培策 on 16/10/29.
//  Copyright © 2016年 UniqueCe. All rights reserved.
//

#import "LPCSearchDataTableViewController.h"

static NSString *seatchCell = @"seatchCell";

@interface LPCSearchDataTableViewController ()

@end

@implementation LPCSearchDataTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:seatchCell];

    self.tableView.tableFooterView = [UIView new];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return _searchMutableArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:seatchCell forIndexPath:indexPath];
    
    cell.textLabel.text = _searchMutableArray[indexPath.row];
    
    cell.selectionStyle = UITextBorderStyleNone;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *message = [NSString stringWithFormat:@"已选中第%ld行",indexPath.row + 1 ];
    
    UIAlertController *alertCon = [UIAlertController alertControllerWithTitle:@"提示" message:message preferredStyle:UIAlertControllerStyleAlert];
    
    [alertCon addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil ]];
    
    [self presentViewController:alertCon animated:YES completion:nil];
    
}



@end
