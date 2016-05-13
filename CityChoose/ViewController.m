//
//  ViewController.m
//  CityChoose
//
//  Created by YoYo on 16/5/13.
//  Copyright © 2016年 cn.yoyoy.mw. All rights reserved.
//

#import "ViewController.h"
#import "YoYoCityChoose/CityChooseViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *province;
@property (strong, nonatomic) IBOutlet UILabel *area;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)cityChooseAction:(id)sender {
    
    //城市选择
    CityChooseViewController *vc = [CityChooseViewController new];
    //选择以后的回调
    [vc returnCityInfo:^(NSString *province, NSString *area) {
        _province.text = province; //选择的省
        _area.text = area; //选择的地区
    }];
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
