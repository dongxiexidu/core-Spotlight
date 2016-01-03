

#import <UIKit/UIKit.h>

@interface DataSource : NSObject
// 获取所有的用户列表数据信息
- (NSArray *)dataList;

// 保存所有用户数据信息到Core Spotlight的索引器中
- (void)savePeopleToIndex;
@end
