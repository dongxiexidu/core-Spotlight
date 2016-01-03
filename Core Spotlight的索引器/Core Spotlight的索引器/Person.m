//
//  Person.m
//  Core Spotlight的索引器
//
//  Created by 李东喜 on 16/1/3.
//  Copyright © 2016年 don. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)initWithName:(NSString *)name identifer:(NSString *)identifer icon:(NSString *)icon {
    if (self = [super init]) {
        self.name = name;
        self.identifer = identifer;
        self.icon = icon;
    }
    return self;
}
@end
