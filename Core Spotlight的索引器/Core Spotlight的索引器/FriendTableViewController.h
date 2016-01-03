
#import <UIKit/UIKit.h>
@class Person;
@interface FriendTableViewController : UITableViewController
// 根据用户Id获取模型数据
- (Person *)findFriendWithId:(NSString *)identifer;
@end
