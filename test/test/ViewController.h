//
//  ViewController.h
//  test
//
//  Created by ryota on 2019/03/13.
//  Copyright © 2019 ryota. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;


@end

