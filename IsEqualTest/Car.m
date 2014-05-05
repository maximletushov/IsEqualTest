//
//  Car.m
//  IsEqualTest
//
//  Created by Maxim on 5/5/14.
//  Copyright (c) 2014 Maxim. All rights reserved.
//

#import "Car.h"

@implementation Car

- (BOOL)isEqual:(id)object
{
    if(![object isKindOfClass:[Car class]]) {
        return NO;
    }
    
    return ([self.carIdentifier isEqual:[(Car *)object carIdentifier]]);
}

- (id)copyWithZone:(NSZone *)zone
{
    Car *copy = [[Car allocWithZone:zone] init];
    
    copy.carIdentifier = self.carIdentifier;
    
    return copy;
}

- (NSUInteger)hash
{
    return [self.carIdentifier integerValue];
}

@end
