//
//  FriendTableViewController.h
//  Core Spotlight的索引器
//
//  Created by 李东喜 on 16/1/3.
//  Copyright © 2016年 don. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Person;
@interface FriendTableViewController : UITableViewController
// 根据用户Id获取模型数据
- (Person *)findFriendWithId:(NSString *)identifer;
@end
