//
//  LPCDetailedDataTableViewController.m
//  UISearchControllerDemo
//
//  Created by 刘培策 on 16/10/29.
//  Copyright © 2016年 UniqueCe. All rights reserved.
//

#import "LPCDetailedDataTableViewController.h"

@interface LPCDetailedDataTableViewController ()<UISearchResultsUpdating>

@property(nonatomic,strong) UISearchController *searchController;

@end

@implementation LPCDetailedDataTableViewController {
    
    NSArray *_dataArray;

    NSMutableArray *_searchDataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"详情数据";
    
    [self loadData];
    
    [self setupSearchController];
    
}

#pragma mark-->数据源
- (void)loadData {
    
    //模拟数据
    NSMutableArray *resultArray = [[NSMutableArray alloc] init];
    
    for (int i = 0; i< 20; i++) {
        
        NSString *dataString = [NSString stringWithFormat:@"%d",i];
        
        [resultArray addObject:dataString];
    }
    _dataArray = resultArray.copy;
}

#pragma mark-->创建搜索框
- (void)setupSearchController {
    
    //如果在同一视图中展现搜索结果传送“nil”就可以啦！！！！！
    self.searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
    
    self.searchController.searchResultsUpdater = self;
    
    self.tableView.tableHeaderView = self.searchController.searchBar;
    
    self.definesPresentationContext = YES;
    
    //显示一个灰色的背景-->默认是显示的
    //self.searchController.dimsBackgroundDuringPresentation = NO;
    
    //不隐藏Navigation-->默认是隐藏的
    //self.searchController.hidesNavigationBarDuringPresentation = NO;
    
    self.searchController.searchBar.placeholder = @"搜索";
}

#pragma mark-->UISearchResultsUpdating
-(void)updateSearchResultsForSearchController:(UISearchController *)searchController {
    
    
}


#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID" forIndexPath:indexPath];
    
    cell.textLabel.text = _dataArray[indexPath.row];
    
    return cell;
}




@end
