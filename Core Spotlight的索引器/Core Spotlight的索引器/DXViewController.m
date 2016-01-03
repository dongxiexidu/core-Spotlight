
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
