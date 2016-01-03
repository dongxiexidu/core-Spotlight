//
//  DXViewController.m
//  Core Spotlight的索引器
//
//  Created by 李东喜 on 16/1/3.
//  Copyright © 2016年 don. All rights reserved.
//

#import "DXViewController.h"
#import "Person.h"
@interface DXViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageV;
@property (weak, nonatomic) IBOutlet UILabel *nameLable;
@end

@implementation DXViewController
- (void)viewDidLoad {
    [super viewDidLoad];

    Person *person = self.person;
    
    self.imageV.image = [UIImage imageNamed:person.icon];
    self.nameLable.text = person.name;
}
@end
