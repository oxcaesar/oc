//
//  PlayingCard.h
//  Vedios_002_CardTurningMVC
//
//  Created by oxcaesar on 14-9-14.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

+ (NSArray *) validSuits;
+ (NSArray *) rankStrings;

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;
@end
