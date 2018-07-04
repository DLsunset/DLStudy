//
//  ViewController.m
//  Study
//
//  Created by qyhy on 2018/7/4.
//  Copyright © 2018年 QYhengye. All rights reserved.
//

#import "ViewController.h"
#import "DLSubjectCell.h"


@interface ViewController ()<UITableViewDataSource,UISearchBarDelegate,UITableViewDelegate,DZNEmptyDataSetSource>
@property (nonatomic, strong) NSMutableArray *dataArr;
@property (nonatomic, strong) UITableView *table;
@property (nonatomic, strong) NSMutableArray *allData;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIView *nav = [[UIView alloc] init];
//    nav.backgroundColor = THEMECOLOR;
//    [self.view addSubview:nav];
//    [nav mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.right.top.offset(0);
//        make.height.offset(SafeAreaTopHeight);
//    }];
//
//    UITextField *text = [[UITextField alloc] init];
//    text.placeholder = @"请输入关键词";
//    [nav addSubview:text];
//    [text mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.offset(RealValue(10));
//        make.bottom.offset(RealValue(-5));
//        make.top.offset(SafeAreaTopBar + RealValue(5));
//        make.right.offset(RealValue(100));
//    }];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"refreshAddress"] style:UIBarButtonItemStylePlain target:self action:@selector(requestData)];
    self.navigationItem.rightBarButtonItem = item;
    
    UISearchBar *search = [[UISearchBar alloc] init];
    search.delegate = self;
    search.placeholder = @"请输入关键字";
    search.barStyle = UIBarStyleBlack;
    self.navigationItem.titleView = search;
    
    UITableView *table = [[UITableView alloc] init];
    _table = table;
    table.emptyDataSetSource = self;
    table.delegate = self;
    table.dataSource = self;
    table.rowHeight = UITableViewAutomaticDimension;
    table.estimatedRowHeight = 100;
    [table registerClass:[DLSubjectCell class] forCellReuseIdentifier:@"cellid"];
    table.tableFooterView = [[UIView alloc] init];
    [self.view addSubview:table];
    [table mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.offset(0);
        make.top.offset(0);
    }];
    self.allData = [NSMutableArray array];
    [self requestData];
}

- (NSMutableArray *)dataArr {
    if (!_dataArr) {
        _dataArr = [NSMutableArray array];
    }
    return _dataArr;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    [self.navigationController.view endEditing:YES];
}

- (NSAttributedString *)titleForEmptyDataSet:(UIScrollView *)scrollView {
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:@"没有数据"];
    return str;
}

#pragma mark：______________tableView DataSource______________

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DLSubjectCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellid" forIndexPath:indexPath];
    cell.model = _dataArr[indexPath.row];
    return cell;
}

- (void)requestData {
    
    [QYHYNetWorkTool requestWithUrl:@"http://nishuihan.dugwang.com/api/user/lists?token=donglei" WithParams:nil AndSucceedBlock:^(NSDictionary *dataDic) {
        NSLog(@"%@",dataDic);
        NSMutableArray *arr = [NSMutableArray array];
        for (NSDictionary *dict in dataDic) {
            SubjectModel *model = [SubjectModel modelWithDict:dict];
            [arr addObject:model];
        }
        self.allData = arr;
    } AndFailure:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    
    [self searchWithText:searchText];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [self searchWithText:searchBar.text];
}

- (void)searchWithText:(NSString *)str {
    [self.dataArr removeAllObjects];
    for (SubjectModel *model in self.allData) {
        if ([model.name containsString:str] || [model.options containsString:str] || [model.answer containsString:str]) {
            [self.dataArr addObject:model];
        }
    }
    [self.table reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
