//
//  main.m
//  Vedios_001_Card
//
//  Created by oxcaesar on 14-9-11.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Card.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // create the first instance with the content is "King"
        Card *card_fisrt = [[Card alloc] init];
        card_fisrt.content = @"King";
        NSLog(@"The card_fisrt`s content is : %@", card_fisrt.content);
        
        // create the second instance with the content is "A"
        Card *card_second = [Card new];
        card_second.content = @"A";
        NSLog(@"The card_second`s content is : %@", card_second.content);
        
        // match their content
        BOOL isMatch = [card_fisrt isMatch:card_second];
        if (isMatch) {
            NSLog(@"Result:Match");
        } else {
            NSLog(@"Result:NO MATCH");
        }
    }
    return 0;
}
