//
//  SecondViewController.m
//  SingleTest
//
//  Created by Mac on 16/2/29.
//  Copyright © 2016年 afei. All rights reserved.
//

#import "SecondViewController.h"
#import "Single.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)BtnClickSecond:(UIButton *)sender {
    Single *obj = [Single shareSingle];
    obj.color = sender.backgroundColor;
    
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}
@end
