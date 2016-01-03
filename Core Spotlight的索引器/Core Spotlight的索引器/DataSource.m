//
//  DataSource.m
//  Core Spotlight的索引器
//
//  Created by 李东喜 on 16/1/3.
//  Copyright © 2016年 don. All rights reserved.
//

#import "DataSource.h"
#import "Person.h"
#import <CoreSpotlight/CoreSpotlight.h>
@implementation DataSource
- (NSArray *)dataList {
    Person *becky = [[Person alloc] initWithName:@"Becky" identifer:@"1" icon:@"becky"];
    
    Person *ben = [[Person alloc] initWithName:@"Ben" identifer:@"2" icon:@"ben"];
    
    Person *jane = [[Person alloc] initWithName:@"Jane" identifer:@"3" icon:@"jane"];
    
    Person *pete = [[Person alloc] initWithName:@"Pete" identifer:@"4" icon:@"pete"];
    
    Person *ray = [[Person alloc] initWithName:@"Ray" identifer:@"5" icon:@"ray"];
    
    Person *tom = [[Person alloc] initWithName:@"Tom" identifer:@"6" icon:@"tom"];
    
    return @[becky, ben, jane, pete, ray, tom];
}


- (void)savePeopleToIndex {

    // 设置搜索属性
    NSMutableArray *searchableItems = [NSMutableArray array];
    for (Person *p in self.dataList) {

        CSSearchableItemAttributeSet *attributeSet = [[CSSearchableItemAttributeSet alloc] initWithItemContentType:@"image"];
        attributeSet.title = p.name;
        attributeSet.contentDescription = [NSString stringWithFormat:@"这个家伙名字叫 %@", p.name];
        attributeSet.thumbnailData = UIImagePNGRepresentation([UIImage imageNamed:p.icon]);
        
        CSSearchableItem *item = [[CSSearchableItem alloc] initWithUniqueIdentifier:p.identifer domainIdentifier:@"chuanzhang" attributeSet:attributeSet];
        [searchableItems addObject:item];
    }
    
    // 保存,将信息一项一项存入CoreSpotlight，以便用户搜索，显示搜索结果
    [[CSSearchableIndex defaultSearchableIndex] indexSearchableItems:searchableItems completionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"error message:%@", error.localizedDescription);
        }
    }];
}
@end
