//
//  CustomView+MyCategory.h
//  CategoryAndExtensionTest
//
//  Created by Macmini on 2019/8/16.
//  Copyright © 2019 Macmini. All rights reserved.
//

#import "CustomView.h"

NS_ASSUME_NONNULL_BEGIN
//类别
@interface CustomView (MyCategory)
@property (nonatomic, strong) NSString *name;
- (void)setupUI;
@end

NS_ASSUME_NONNULL_END
