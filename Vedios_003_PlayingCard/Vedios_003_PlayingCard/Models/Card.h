//
//  Card.h
//  Vedios_003_PlayingCard
//
//  Created by oxcaesar on 14-9-14.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosn) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (BOOL) match: (NSArray *) otherCards;

@end
