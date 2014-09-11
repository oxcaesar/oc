//
//  Card.h
//  Vedios_001_Card
//
//  Created by oxcaesar on 14-9-11.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *content;

- (BOOL) isMatch: (Card *)card;

@end
