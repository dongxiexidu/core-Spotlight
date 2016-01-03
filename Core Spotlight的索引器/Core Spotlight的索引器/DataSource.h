//
//  DataSource.h
//  Core Spotlight的索引器
//
//  Created by 李东喜 on 16/1/3.
//  Copyright © 2016年 don. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataSource : NSObject
// 获取所有的用户列表数据信息
- (NSArray *)dataList;

// 保存所有用户数据信息到Core Spotlight的索引器中
- (void)savePeopleToIndex;
@end
