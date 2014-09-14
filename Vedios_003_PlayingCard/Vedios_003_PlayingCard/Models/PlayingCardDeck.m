//
//  PlayingCardDeck.m
//  Vedios_003_PlayingCard
//
//  Created by oxcaesar on 14-9-14.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype) init{
    self = [super init];
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger i = 1; i <= [[PlayingCard rankStrings] count]; i++) {
                PlayingCard *pc = [[PlayingCard alloc] init];
//                NSLog(@"initializing the card is the %@ ,%lu", suit, i);
                [pc setSuit:suit];
                [pc setRank:i];
                [self addCard:pc];
            }
        }
    };
    return self;
}

@end
