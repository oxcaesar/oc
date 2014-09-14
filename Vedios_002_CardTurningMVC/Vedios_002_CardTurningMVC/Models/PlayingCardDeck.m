
//
//  PlayingCardDeck.m
//  Vedios_002_CardTurningMVC
//
//  Created by oxcaesar on 14-9-14.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"
@implementation PlayingCardDeck

- (instancetype) init
{
    self = [super init];
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [[PlayingCard rankStrings] count]; rank++) {
                PlayingCard *pc = [[PlayingCard alloc] init];
                [pc setSuit:suit];
                [pc setRank:rank];
                [self addCard:pc];
            }
        }
    }
    return self;
}

- (NSString *) rankStringBySuit: (NSString *) suit
{
    NSString *suitSet = [@"" stringByAppendingString:suit];
    NSUInteger check = 0;
    for (PlayingCard *card in [self cards]) {
        if ([card suit] == suit) {
            check++;
            suitSet = [suitSet stringByAppendingString:[PlayingCard rankStrings][card.rank - 1]];
            suitSet = [suitSet stringByAppendingString:@","];
        }
    }
    if (check) {
        return suitSet;
    } else {
        return @"";
    }
}
@end
