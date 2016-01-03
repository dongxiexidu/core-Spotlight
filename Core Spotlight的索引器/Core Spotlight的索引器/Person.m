
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
