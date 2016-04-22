//
//  ViewController.m
//  SingleTest
//
//  Created by Mac on 16/2/29.
//  Copyright © 2016年 afei. All rights reserved.
//

//单例类  是始终只有一个对象存在的类 称为单例类.
//资源的共享 (数据的共享)
#import "ViewController.h"
#import "Single.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    Single  *obj = [[Single alloc]init];
    _LabelMain.backgroundColor = obj.color;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Single *obj1 = [Single shareSingle];
    Single *obj2 = [[Single alloc]init];
    NSLog(@"-----%p",obj1);
    NSLog(@"=======%p",obj2);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_LabelMain release];
    [super dealloc];
}
- (IBAction)goToNextVC:(UIButton *)sender {
    SecondViewController *VC =[[SecondViewController alloc]init];
    [self presentViewController:VC animated:YES completion:nil];
    [VC release];
    
    
}
@end
