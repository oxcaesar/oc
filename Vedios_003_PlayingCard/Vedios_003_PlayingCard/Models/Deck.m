//
//  Deck.m
//  Vedios_003_PlayingCard
//
//  Created by oxcaesar on 14-9-14.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import "Deck.h"

@implementation Deck

-(NSMutableArray *) cards
{
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

-(void) addCard:(Card *) card
{
    [self addCard:card atTop:NO];
}

-(void) addCard:(Card *)card atTop: (BOOL) atTop
{
    if (atTop) {
        [[self cards] insertObject:card atIndex:0];
    } else {
        [[self cards] addObject:card];
    }
}

-(Card *) drawRandomCard
{
    NSUInteger ranIndex = arc4random() % [[self cards] count];
    Card *card = [self cards][ranIndex];
    [[self cards] removeObjectAtIndex:ranIndex];
    return card;
}
@end
