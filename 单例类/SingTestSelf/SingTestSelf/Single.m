//
//  Single.m
//  SingTestSelf
//
//  Created by Mac on 16/2/29.
//  Copyright © 2016年 afei. All rights reserved.
//

#import "Single.h"
static Single *_singleObj;
@implementation Single
+(id)shareSingle{
    @synchronized(self) {
        if (_singleObj == nil) {
            _singleObj = [[Single alloc]init];
        }
    }
    return _singleObj;
}

+(id)alloc{
    @synchronized(self) {
        if (_singleObj == nil) {
            
            _singleObj = [super alloc];
        }
    }
    return _singleObj;
}
@end
