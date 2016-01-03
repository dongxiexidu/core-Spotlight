//
//  Person.h
//  Core Spotlight的索引器
//
//  Created by 李东喜 on 16/1/3.
//  Copyright © 2016年 don. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *identifer;
@property (nonatomic, copy) NSString *icon;
- (instancetype)initWithName:(NSString *)name identifer:(NSString *)identifer icon:(NSString *)icon;

@end
