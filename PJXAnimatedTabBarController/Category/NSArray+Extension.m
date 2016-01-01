//
//  NSArray+Extension.m
//  PJXAnimatedTabBarDemo
//
//  Created by poloby on 15/12/31.
//  Copyright © 2015年 poloby. All rights reserved.
//

#import "NSArray+Extension.h"

@implementation NSArray (Extension)

- (NSArray *)reverse
{
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:[self count]];
    
    [self enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [array addObject:obj];
    }];
    
    return array;
}

@end

@implementation NSMutableArray (Extension)

- (NSMutableArray *)reverse
{
    int startIndex = 0;
    int endIndex = (int)self.count - 1;
    
    while (startIndex < endIndex) {
        id tmp = self[startIndex];
        self[startIndex] = self[endIndex];
        self[endIndex] = tmp;
        startIndex++;
        endIndex--;
    }
    
    return self;
}

@end