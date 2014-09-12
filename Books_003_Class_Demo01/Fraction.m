//
//  Fraction.m
//  Books_003_Class_Demo01
//
//  Created by oxcaesar on 14-9-12.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
{
    int fenzi;
    int fenmu;
}

-(void) print
{
    NSLog(@"Fraction`s method \"print\": working.");
    NSLog(@"%i/%i", fenzi, fenmu);
}

-(void) setFenzi: (int) z FenMu: (int) m
{
    fenzi = z;
    fenmu = m;
}
@end
