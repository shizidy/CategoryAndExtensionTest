//
//  ViewController.m
//  CategoryAndExtensionTest
//
//  Created by Macmini on 2019/8/16.
//  Copyright © 2019 Macmini. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
#import "CustomView+MyCategory.h"
#import "CustomView+MyExtension.h"

@interface ViewController ()

@end
static NSString *const myName = @"Li lei";
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    CustomView *redView = [[CustomView alloc] initWithFrame:CGRectMake(50, 100, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    redView.age = @"18";
    redView.name = myName;
    [redView setUI];
    [redView setupUI];
    // Do any additional setup after loading the view.
}


@end
