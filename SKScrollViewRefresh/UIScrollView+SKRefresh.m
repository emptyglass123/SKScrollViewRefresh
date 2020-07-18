//
//  UIScrollView+WDRefreshView.m
//  ZBank
//
//  Created by zhu_hui on 2018/3/21.
//  Copyright © 2018年 yonyou. All rights reserved.
//

#import "UIScrollView+SKRefresh.h"
#import "MJRefresh.h"
#import <objc/runtime.h>

@implementation UIScrollView (WDRefreshView)


- (void)setMJRefreshFooter:(WDOperationBlock)operateBlock
{
    MJRefreshBackNormalFooter *footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
        if (operateBlock) {
            operateBlock();
        }
    }];
    [footer setState:MJRefreshStatePulling];
    [footer setTitle:@"上拉刷新" forState:MJRefreshStateIdle]; /** 普通闲置状态 */
    [footer setTitle:@"松开加载更多" forState:MJRefreshStatePulling]; /** 松开就可以进行刷新的状态 */
    [footer setTitle:@"加载中" forState:MJRefreshStateRefreshing]; /** 松开就可以进行刷新的状态 */

    self.mj_footer = footer;
    
}

- (void)setMJRefreshHeader:(WDOperationBlock)operateBlock{
    
    MJRefreshNormalHeader *footer = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        if (operateBlock) {
            operateBlock();
        }
    }];
    [footer.lastUpdatedTimeLabel setHidden:YES];
    [footer setState:MJRefreshStateIdle];
    [footer setTitle:@"下拉刷新" forState:MJRefreshStateIdle]; /** 普通闲置状态 */
    [footer setTitle:@"松开加载更多" forState:MJRefreshStatePulling]; /** 松开就可以进行刷新的状态 */
    [footer setTitle:@"加载中" forState:MJRefreshStateRefreshing]; /** 松开就可以进行刷新的状态 */
    self.mj_header = footer;

}

@end
