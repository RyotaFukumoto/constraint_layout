//
//  ViewController.m
//  test
//
//  Created by ryota on 2019/03/13.
//  Copyright © 2019 ryota. All rights reserved.
//

#import "ViewController.h"
#import "myCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UINib *nib = [UINib nibWithNibName:@"myCell" bundle:[NSBundle mainBundle]];
    [self.tableview registerNib:nib forCellReuseIdentifier:@"myCell"];
}

//Table Viewのセクション数を指定
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // 今回はセクション１個
    return 1;
}

//Table Viewのセルの数を指定
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // 今回は要素８個
    return 1;
}

//各セルの要素を設定する
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"myCell";
    
    // tableCell の ID で UITableViewCell のインスタンスを生成
    myCell *cell =
    [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    UILabel *label = [[UILabel alloc] init];
    label.translatesAutoresizingMaskIntoConstraints = false;
    label.text = @"￥";
    [cell.secondView addSubview:label];
    NSLayoutConstraint *xConstraint = [NSLayoutConstraint constraintWithItem:label
                                                                   attribute:NSLayoutAttributeCenterX
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:cell.secondView
                                                                   attribute:NSLayoutAttributeCenterX
                                                                  multiplier:1
                                                                    constant:0];
    
    //垂直値の制約
    NSLayoutConstraint *yConstraint = [NSLayoutConstraint constraintWithItem:label
                                                                   attribute:NSLayoutAttributeCenterY
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:cell.secondView
                                                                   attribute:NSLayoutAttributeCenterY
                                                                  multiplier:1
                                                                    constant:0];

    [cell.secondView addConstraint:xConstraint];
    [cell.secondView addConstraint:yConstraint];
    return cell;
}

@end
