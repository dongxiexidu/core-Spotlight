

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *identifer;
@property (nonatomic, copy) NSString *icon;
- (instancetype)initWithName:(NSString *)name identifer:(NSString *)identifer icon:(NSString *)icon;

@end
