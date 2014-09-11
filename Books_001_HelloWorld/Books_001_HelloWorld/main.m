//
//  main.m
//  Books_001_HelloWorld
//
//  Created by oxcaesar on 14-9-11.
//  Copyright (c) 2014年 oxcaesar. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool { // system can manage the memory efficiently,auto reference counting
        // show the message on the console
        NSLog(@"Hello, World!");
        // two number operate
        int add_result, sub_result, multi_result, div_result;
        int operate1 = 5;
        int operate2 = 5;
        add_result = operate1 + operate2;
        sub_result = operate1 - operate2;
        multi_result = operate1 * operate2;
        div_result = operate1 / operate2;
        
        NSLog(@"%i + %i = %i", operate1, operate2, add_result);
        NSLog(@"%i - %i = %i", operate1, operate2, sub_result);
        NSLog(@"%i * %i = %i", operate1, operate2, multi_result);
        NSLog(@"%i / %i = %i", operate1, operate2, div_result);
        
    }
    return 0;
}
