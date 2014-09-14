//
//  PlayingCard.m
//  Vedios_002_CardTurningMVC
//
//  Created by oxcaesar on 14-9-14.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

+ (NSArray *) rankStrings
{
    return @[@"A",
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
}

+ (NSArray *) validSuits
{
    return @[@"♥️",
             @"♠️",
             @"♦️",
             @"♣️"];
}

- (NSString *) contents
{
    return [NSString stringWithFormat:@"%@%@",
            [PlayingCard rankStrings][self.rank - 1],
            self.suit];
}

- (void) setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (void) setRank:(NSUInteger)rank
{
    if (rank <= [[PlayingCard rankStrings] count]) {
        _rank = rank;
    }
}
@end
