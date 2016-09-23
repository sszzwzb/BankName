//
//  ViewController.m
//  BankName
//
//  Created by kaiyi on 16/9/21.
//  Copyright © 2016年 kaiyi. All rights reserved.
//

#import "ViewController.h"

#import "BankName.h"

@interface ViewController () {
    UITextField *mytext;
    UIButton *mybut;
    UILabel *myLabel;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    [self up_view];
    
    
    
}

-(void)buttonOK{
    NSLog(@"按键");
    NSString *temp = [BankName BankidCardString: mytext.text];
    
    myLabel.text = temp;
    
    NSLog(@"%@",temp);
}


-(void)up_view{
    
    mytext = [[UITextField alloc]initWithFrame:
               CGRectMake(
                          0, 180, CGRectGetWidth(self.view.frame), 50)];
    [self.view addSubview:mytext];
    mytext.backgroundColor = [UIColor groupTableViewBackgroundColor];
    mytext.font = [UIFont systemFontOfSize:15.f];
    mytext.textAlignment = NSTextAlignmentCenter;
    mytext.placeholder = @"请输入银行卡号";
    
    
    mybut = [UIButton buttonWithType:(UIButtonTypeSystem)];
    mybut.frame = CGRectMake(
                             (CGRectGetWidth(self.view.frame) - 100 ) / 2, 250, 100, 50);
    [self.view addSubview:mybut];
    mybut.backgroundColor = [UIColor lightGrayColor];
    [mybut setTitle:@"确认" forState:(UIControlStateNormal)];
    [mybut addTarget:self action:@selector(buttonOK) forControlEvents:(UIControlEventTouchUpInside)];
    mybut.layer.masksToBounds = YES;
    mybut.layer.cornerRadius = CGRectGetHeight(mybut.frame) / 2;
    
    
    myLabel = [[UILabel alloc]initWithFrame:
               CGRectMake(0, 320, CGRectGetWidth(self.view.frame), 50)];
    [self.view addSubview:myLabel];
    myLabel.backgroundColor = [UIColor groupTableViewBackgroundColor];
    myLabel.font = [UIFont systemFontOfSize:15.f];
    myLabel.textAlignment = NSTextAlignmentCenter;
    myLabel.text = @"- - -";
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
