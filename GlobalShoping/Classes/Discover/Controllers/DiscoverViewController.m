//
//  DiscoverViewController.m
//  GlobalShoping
//
//  Created by scjy on 16/3/15.
//  Copyright © 2016年 王雪娟. All rights reserved.
//

#import "DiscoverViewController.h"
#import "VOSegmentedControl.h"

@interface DiscoverViewController ()
@property(nonatomic,strong) VOSegmentedControl *segmentedController;

@end

@implementation DiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationController.navigationBar.topItem setTitleView:self.segmentedController ];
}

#pragma mark-------------Lazy

-(VOSegmentedControl *)segmentedController{
    if (_segmentedController == nil) {
        self.segmentedController = [[VOSegmentedControl alloc]initWithSegments:@[@{VOSegmentText:@"热门"},@{VOSegmentText:@"搭配"}]];
        self.segmentedController.contentStyle = VOContentStyleTextAlone;
        self.segmentedController.indicatorStyle = VOSegCtrlIndicatorStyleBottomLine;
        self.segmentedController.frame = CGRectMake(kWidth/4, 0, kWidth/2, 44);
    }
    return _segmentedController;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
