//
//  ViewController.m
//  SingTestSelf
//
//  Created by Mac on 16/2/29.
//  Copyright © 2016年 afei. All rights reserved.
//

#import "ViewController.h"
#import "Single.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    Single *single = [[Single alloc]init];
    
    _labelSeconde.font = single.font;
//    _labelSeconde.font = [UIFont systemFontOfSize:[single.str integerValue]];
   
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)secondVC:(UIButton *)sender {
    SecondViewController *VC = [[SecondViewController alloc]init];
    [self presentViewController:VC animated:YES completion:nil];
    [VC release];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_labelSeconde release];
    [super dealloc];
}
@end
