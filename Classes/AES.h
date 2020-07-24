//
//  AES.h
//  IAPDemo
//
//  Created by 刘鹏i on 2020/7/23.
//  Copyright © 2020 liu. All rights reserved.
//  速度更快、更安全

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AES : NSObject
/// AES加密
+ (NSString *)encrypt:(NSString *)message password:(NSString *)password;
/// AES解密
+ (NSString *)decrypt:(NSString *)base64EncodedString password:(NSString *)password;


// hex 试试 stringByApplyingTransform: NSStringTransformToXMLHex
@end

NS_ASSUME_NONNULL_END
