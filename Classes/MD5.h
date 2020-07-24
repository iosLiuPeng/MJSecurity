//
//  MD5.h
//  IAPDemo
//
//  Created by 刘鹏i on 2020/7/23.
//  Copyright © 2020 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MD5 : NSObject
#pragma mark - MD5
/// MD5加密
+ (NSString *)MD5String:(NSString *)stirng;
+ (NSString *)MD5Data:(NSData *)data;

/// 文件MD5
+ (NSString *)fileMD5WithPath:(NSString *)filePath;

/// MD5破解方法：
/// 1.cmd5网站可以通过MD5码在数据库中反向查内容，能查到的有限，还要收费
/// 2.王小云MD5破解，就是证明了两个不同的明文能有相同的MD5，目前没啥用

#pragma mark - HMAC-MD5 (HMAC 消息认证机制，可以和任何迭代散列算法搭配使用)
/// 更安全的MD5方式，双方共有一个密钥，确保MD5不被破解

/// HMAC-MD5加密
+ (NSString *)hmacMD5String:(NSString *)stirng hmacKey:(NSString *)key;
+ (NSString *)hmacMD5Data:(NSData *)data hmacKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
