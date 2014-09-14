//
//  ViewController.m
//  Vedios_002_CardTurningMVC
//
//  Created by oxcaesar on 14-9-13.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "Card.h"
@interface ViewController ()

@property (strong, nonatomic) PlayingCardDeck *playingCardDeck;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UILabel *fangPian;
@property (weak, nonatomic) IBOutlet UILabel *hongTao;
@property (weak, nonatomic) IBOutlet UILabel *meiHua;
@property (weak, nonatomic) IBOutlet UILabel *heiTao;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (PlayingCardDeck *) playingCardDeck
{
    if ( ! _playingCardDeck) {
        _playingCardDeck = [[PlayingCardDeck alloc] init];
    }
    return _playingCardDeck;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeCard:(UIButton *)sender {
    if ([[[self playingCardDeck] cards] count] != 0) {
        // draw a random card
        Card *pc = [[self playingCardDeck] drawRandomCard];
        
        // return to the View of MVC
        NSString *cardContent = [NSString stringWithFormat:@"%@",
                                 [pc contents]];
        [sender setTitle:cardContent forState:UIControlStateNormal];
        
        // Log to the console
//        NSLog(@"Here: %lu left.", [[[self playingCardDeck] cards] count]);
        NSString *statusShow = [NSString stringWithFormat:@"剩余: %lu张",
                                [[[self playingCardDeck] cards] count]];
        [[self statusLabel] setText:statusShow];
        
        // Refresh the rank String of the suit
        NSString *hongt = [[self playingCardDeck] rankStringBySuit:@"♥️"];
//        NSLog(@"刷新后的红桃为：%@", hongt);
        NSString *heit = [[self playingCardDeck] rankStringBySuit:@"♠️"];
        NSString *fangp = [[self playingCardDeck] rankStringBySuit:@"♦️"];
        NSString *meih = [[self playingCardDeck] rankStringBySuit:@"♣️"];
        
        [[self hongTao] setText:hongt];
        [[self fangPian] setText:fangp];
        [[self heiTao] setText:heit];
        [[self meiHua] setText:meih];
    } else {
//        NSLog(@"Here: %lu left.", [[[self playingCardDeck] cards] count]);
        NSString *statusShow = @"卧槽，别点了，没牌了！";
        [[self statusLabel] setText:statusShow];
    }
}

@end
