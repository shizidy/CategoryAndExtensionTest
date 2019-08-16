//
//  CustomView+MyCategory.m
//  CategoryAndExtensionTest
//
//  Created by Macmini on 2019/8/16.
//  Copyright © 2019 Macmini. All rights reserved.
//

#import "CustomView+MyCategory.h"
#import <objc/runtime.h>

@implementation CustomView (MyCategory)
//定义关联key
static const char *nameKey = "name";
//@dynamic name;
//category原则上不能添加属性，但利用runtime可以添加
- (void)setName:(NSString *)name {
    // 第一个参数：给哪个对象添加关联
    // 第二个参数：关联的key，通过这个key获取
    // 第三个参数：关联的value
    // 第四个参数:关联的策略
    objc_setAssociatedObject(self, nameKey, name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)name {
    //// 根据关联的key，获取关联的值。
    return objc_getAssociatedObject(self, nameKey);
}


- (void)setupUI {
    NSLog(@"setupUI");
}
@end
