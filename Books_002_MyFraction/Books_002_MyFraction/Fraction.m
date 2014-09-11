//
//  Fraction.m
//  Books_002_MyFraction
//
//  Created by oxcaesar on 14-9-11.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
{
    int numberator;
    int denominator;
}

-(void) print
{
    NSLog(@"%i/%i", numberator, denominator);
}
-(void) setNumberator: (int) n
{
    numberator = n;
}
-(void) setDenominator: (int) d
{
    denominator = d;
}
@end
