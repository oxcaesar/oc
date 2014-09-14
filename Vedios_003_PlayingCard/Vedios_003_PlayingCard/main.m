//
//  main.m
//  Vedios_003_PlayingCard
//
//  Created by oxcaesar on 14-9-14.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PlayingCardDeck *pcd = [[PlayingCardDeck alloc] init];
        NSMutableArray *cards = [pcd cards];
        
//        NSLog(@"All cards is :");
//        for (PlayingCard *card in cards) {
//            NSString *tmp_card = [card contents];
//            NSLog(@"%@", tmp_card);
//        }
        
        // draw the random card
        NSUInteger totalCardNum = [cards count];
        for (NSUInteger i = 0; i < totalCardNum; i++) {
            Card *pc = [pcd drawRandomCard];
            NSLog(@"%@, the left number is: %lu", [pc contents], [cards count]);
        }
    }
    return 0;
}
