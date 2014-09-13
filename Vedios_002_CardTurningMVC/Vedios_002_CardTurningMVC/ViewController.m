//
//  ViewController.m
//  Vedios_002_CardTurningMVC
//
//  Created by oxcaesar on 14-9-13.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeCard:(UIButton *)sender {
    // 改变花色
    NSArray *suits = @[@"♠️", @"♥️", @"♣️", @"♦️"];
    int randomSuit = arc4random() % [suits count];
    NSArray *rank = @[@"A",
                      @"2",
                      @"3",
                      @"4",
                      @"5",
                      @"6",
                      @"7",
                      @"8",
                      @"9",
                      @"10",
                      @"J",
                      @"Q",
                      @"K"];
    int randomRank = arc4random() % [rank count];

    NSString *resetTitle = [NSString stringWithFormat:@"%@ %@",
                            suits[randomSuit],
                            rank[randomRank]];
    [sender setTitle:resetTitle forState:UIControlStateNormal];
    
}

@end
