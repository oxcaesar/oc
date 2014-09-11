//
//  main.m
//  Books_002_MyFraction
//
//  Created by oxcaesar on 14-9-11.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction;
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        // set the fraction is 1/3
        [myFraction setNumberator:1];
        [myFraction setDenominator:3];
        // show defined fraction
        [myFraction print];
        // another way that showing defined fraction
        NSLog(@"Outside the instance is %i/%i.",
              [myFraction numberator], [myFraction denominator]);
    }
    return 0;
}
