//
//  Deck.h
//  Vedios_003_PlayingCard
//
//  Created by oxcaesar on 14-9-14.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface Deck : NSObject

@property (strong, nonatomic) NSMutableArray *cards;
-(void) addCard:(Card *) card;
-(void) addCard:(Card *)card atTop: (BOOL) atTop;
-(Card *) drawRandomCard;
@end
