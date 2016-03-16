//
//  DiscoverViewController.m
//  GlobalShoping
//
//  Created by scjy on 16/3/15.
//  Copyright © 2016年 王雪娟. All rights reserved.
//

#import "DiscoverViewController.h"
#import "VOSegmentedControl.h"
#import "MatchViewController.h"

@interface DiscoverViewController ()
@property(nonatomic,strong) VOSegmentedControl *segmentedController;
@property(nonatomic,strong) UIView *firstView;
//@property(nonatomic,strong) UIView *TwoView;

@end

@implementation DiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationController.navigationBar.topItem setTitleView:self.segmentedController ];
//    [self selectChange];
//    [self.view addSubview:self.firstView];
     self.view.backgroundColor = [UIColor redColor];
}

#pragma mark-------------Lazy

-(VOSegmentedControl *)segmentedController{
    if (_segmentedController == nil) {
        self.segmentedController = [[VOSegmentedControl alloc]initWithSegments:@[@{VOSegmentText:@"热门"},@{VOSegmentText:@"搭配"}]];
        self.segmentedController.contentStyle = VOContentStyleTextAlone;
        self.segmentedController.indicatorStyle = VOSegCtrlIndicatorStyleBottomLine;
        self.segmentedController.frame = CGRectMake(kWidth/4, 0, kWidth/2, 44);
        self.segmentedController.indicatorThickness = 2;
        self.segmentedController.selectedSegmentIndex = 0;
        [self.segmentedController addTarget:self action:@selector(selectChange) forControlEvents:UIControlEventValueChanged];
      
    }
    return _segmentedController;
}


-(void)selectChange{
    if (self.segmentedController.selectedSegmentIndex == 0) {
        [self.firstView removeFromSuperview];
       
    }else if (self.segmentedController.selectedSegmentIndex == 1){
        self.firstView = [[UIView alloc] initWithFrame:self.view.frame];
        self.firstView.backgroundColor = [UIColor blueColor];
       [self.view addSubview:self.firstView];
    }
}


//-(void)twoView{
////    MatchViewController *match = [[MatchViewController alloc] init];
////    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:match];
////    [self.navigationController pushViewController:nav animated:YES];
//    [self.view addSubview:self.firstView];
//}
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
