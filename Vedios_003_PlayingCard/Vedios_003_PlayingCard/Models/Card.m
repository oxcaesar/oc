//
//  Card.m
//  Vedios_003_PlayingCard
//
//  Created by oxcaesar on 14-9-14.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import "Card.h"

@implementation Card

- (BOOL) match: (NSArray *) otherCards
{
    BOOL result = NO;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            result = YES;
        }
    }
    return result;
}

@end
