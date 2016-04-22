//
//  Single.m
//  SingleTest
//
//  Created by Mac on 16/2/29.
//  Copyright © 2016年 afei. All rights reserved.
//

#import "Single.h"
static Single *_singleObj;
@implementation Single



+(id)shareSingle
{
    
//@synchronized(<#token#>) {
//    <#statements#>
//}  同步块 ,标志符

    @synchronized(self) {
        if (_singleObj == nil) {
            _singleObj = [[Single alloc]init];
        }
    }
    return _singleObj;
}
+(id)alloc
{
    @synchronized(self) {
        if (_singleObj == nil) {
            //alloc 划分内存空间   init 对象的属性初始化
            _singleObj = [super alloc];
        }
    }
    return _singleObj;
}
@end
