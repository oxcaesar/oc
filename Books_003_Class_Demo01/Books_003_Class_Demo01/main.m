//
//  main.m
//  Books_003_Class_Demo01
//
//  Created by oxcaesar on 14-9-12.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *fraction = [[Fraction alloc] init];
        [fraction setFenzi:2 FenMu:1];
        [fraction print];
    }
    return 0;
}
