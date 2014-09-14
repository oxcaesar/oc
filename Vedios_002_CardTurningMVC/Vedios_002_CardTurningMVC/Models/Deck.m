
//
//  Deck.m
//  Vedios_002_CardTurningMVC
//
//  Created by oxcaesar on 14-9-14.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import "Deck.h"

@implementation Deck


- (NSMutableArray *) cards
{
    if ( ! _cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}
- (void) addCard:(Card *) card
{
    [self addCard:card atTop:NO];
}
- (void) addCard:(Card *) card atTop:(BOOL) atTop
{
    if (atTop) {
        [[self cards] insertObject:card atIndex:0];
    } else {
        [[self cards] addObject:card];
    }
}
- (Card *) drawRandomCard
{
    NSUInteger randomKey = arc4random() % [[self cards] count];
    Card *result = [self cards][randomKey];
    [[self cards] removeObjectAtIndex:randomKey];
    return result;
}
@end
