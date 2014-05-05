//
//  main.m
//  IsEqualTest
//
//  Created by Maxim on 5/5/14.
//  Copyright (c) 2014 Maxim. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Car.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Car *car1 = [[Car alloc] init];
        car1.carIdentifier = @"1";
        
        Car *car2 = [[Car alloc] init];
        car2.carIdentifier = @"1";
        
//        NSLog(@"hash = %d", car1.hash);
        
        NSLog(@"bla hash=%lu",(unsigned long)[@"bla" hash]);
        NSLog(@"bla hash=%lu",(unsigned long)[[NSString stringWithFormat:@"%@",@"bla"] hash]);
        
        
        NSArray *a1 = @[car1];
        NSArray *a2 = @[car2];
        
        BOOL isEqual = [a1 isEqual:a2];
        NSLog(@"is equal = %d", isEqual);
        
        
        NSDictionary *d1 = @{car1: @"1"};
        NSDictionary *d2 = @{car2: @"1"};
        
        isEqual = [d1 isEqual:d2];
        NSLog(@"is equal = %d", isEqual);
        
        NSDictionary *d3 = @{d1: @"2"};
        NSDictionary *d4 = @{d2: @"2"};
        
        isEqual = [d3 isEqual:d4];
        NSLog(@"is equal = %d", isEqual);
    }
    return 0;
}
