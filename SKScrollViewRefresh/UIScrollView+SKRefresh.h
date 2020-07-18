//
//  UIScrollView+WDRefreshView.h
//  ZBank
//
//  Created by zhu_hui on 2018/3/21.
//  Copyright © 2018年 yonyou. All rights reserved.
//

/** ########################   功能: 用于快速集成上拉/下拉刷新  ###########################
 *
 *
 * 集成: 继承于UIScrollView的实例对象直接调用
 * 刷新动作通过Block回传,
 *
 */
#import <UIKit/UIKit.h>


typedef void (^WDOperationBlock)(void); 


@interface UIScrollView (WDRefreshView)


/// 快速配置上拉加载
/// @param operateBlock 回调处理
- (void)setMJRefreshFooter:(WDOperationBlock)operateBlock;


/// 快速配置下拉刷新
/// @param operateBlock 回调处理
- (void)setMJRefreshHeader:(WDOperationBlock)operateBlock;



@end
