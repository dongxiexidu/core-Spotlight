
#import "FriendTableViewController.h"
#import "DataSource.h"
#import "Person.h"
#import "DXViewController.h"

@interface FriendTableViewController ()
/*** 存放模型的数组 ***/
@property (nonatomic,strong) NSArray *dataList;

/*** person ***/
@property (nonatomic,strong) Person *person;
@end

@implementation FriendTableViewController
static NSString * const ID = @"cell";
- (void)viewDidLoad {
    [super viewDidLoad];
    
    DataSource *dataSource = [[DataSource alloc] init] ;
    self.dataList = [dataSource dataList];
    
    [dataSource savePeopleToIndex];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ID];
}
- (Person *)findFriendWithId:(NSString *)identifer {
    for (Person *p in self.dataList) {
        if ([p.identifer isEqualToString:identifer]) {
            return p;
        }
    }
    return nil;
}


#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.dataList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
    
    Person *person = self.dataList[indexPath.row];
    cell.textLabel.text = person.name;
    
    return cell;
}
#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Person *person = self.dataList[indexPath.row];
    DXViewController *vc = [[DXViewController alloc] init];
    vc.person = person;
    
    [self.navigationController pushViewController:vc animated:YES];
}

@end
