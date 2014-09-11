//
//  Card.m
//  Vedios_001_Card
//
//  Created by oxcaesar on 14-9-11.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import "Card.h"

@implementation Card

- (BOOL) isMatch: (Card *)card
{
    if ([card.content isEqualToString:self.content]) {
        return YES;
    } else {
        return NO;
    }
}

@end
