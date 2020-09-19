//
//  ViewController.m
//  structcrashverify
//
//  Created by layne on 2020/9/20.
//

#import "ViewController.h"

#define NSLog(FORMAT, ... )   fprintf(stderr,"%s\n",[[NSString stringWithFormat:@"<%@> %@",[[NSString stringWithUTF8String:__FILE__] lastPathComponent], [NSString stringWithFormat:(FORMAT), ##__VA_ARGS__]] UTF8String]);

typedef struct{
    NSObject *obj;
} CustomStruct;

@interface ViewController ()

@property (nonatomic, assign) CustomStruct globalStruct;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSObject *obj = [[NSObject alloc] init];
    NSLog(@"%d___%@", __LINE__, self.globalStruct.obj);
    CustomStruct localStruct = {
        .obj = obj
    };
    self.globalStruct = localStruct;
    NSLog(@"%d___%@", __LINE__, self.globalStruct.obj);
    NSLog(@"%d___%@", __LINE__, self.globalStruct.obj);
    NSLog(@"%d___%@", __LINE__, self.globalStruct.obj);
    NSLog(@"%d___%@", __LINE__, self.globalStruct.obj);
    NSLog(@"%d___%@", __LINE__, self.globalStruct.obj);
    NSLog(@"%d___%@", __LINE__, self.globalStruct.obj);
    NSLog(@"%d___%@", __LINE__, self.globalStruct.obj);
}

@end
