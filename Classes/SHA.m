//
//  SHA.m
//  IAPDemo
//
//  Created by 刘鹏i on 2020/7/23.
//  Copyright © 2020 liu. All rights reserved.
//

#import "SHA.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation SHA
#pragma mark - SHA
/// SHA1
+ (NSString *)SHA1String:(NSString *)stirng
{
    if (stirng.length == 0) {
        return nil;
    }
    const char *str = stirng.UTF8String;
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA1_DIGEST_LENGTH];
    // 进行SHA加密
    CC_SHA1(str, (CC_LONG)strlen(str), digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

+ (NSString *)SHA1Data:(NSData *)data
{
    if (data == nil) {
        return nil;
    }
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA1_DIGEST_LENGTH];
    // 进行SHA加密
    CC_SHA1(data.bytes, (CC_LONG)data.length, digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

/// SHA224
+ (NSString *)SHA224String:(NSString *)stirng
{
    if (stirng.length == 0) {
        return nil;
    }
    const char *str = stirng.UTF8String;
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA224_DIGEST_LENGTH];
    // 进行SHA加密
    CC_SHA224(str, (CC_LONG)strlen(str), digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA224_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA224_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

+ (NSString *)SHA224Data:(NSData *)data
{
    if (data == nil) {
        return nil;
    }
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA224_DIGEST_LENGTH];
    // 进行SHA加密
    CC_SHA224(data.bytes, (CC_LONG)data.length, digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA224_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA224_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

/// SHA256
+ (NSString *)SHA256String:(NSString *)stirng
{
    if (stirng.length == 0) {
        return nil;
    }
    const char *str = stirng.UTF8String;
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA256_DIGEST_LENGTH];
    // 进行SHA加密
    CC_SHA256(str, (CC_LONG)strlen(str), digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA256_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA256_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

+ (NSString *)SHA256Data:(NSData *)data
{
    if (data == nil) {
        return nil;
    }
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA256_DIGEST_LENGTH];
    // 进行SHA加密
    CC_SHA256(data.bytes, (CC_LONG)data.length, digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA256_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA256_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

/// SHA384
+ (NSString *)SHA384String:(NSString *)stirng
{
    if (stirng.length == 0) {
        return nil;
    }
    const char *str = stirng.UTF8String;
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA384_DIGEST_LENGTH];
    // 进行SHA加密
    CC_SHA384(str, (CC_LONG)strlen(str), digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA384_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA384_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

+ (NSString *)SHA384Data:(NSData *)data
{
    if (data == nil) {
        return nil;
    }
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA384_DIGEST_LENGTH];
    // 进行SHA加密
    CC_SHA384(data.bytes, (CC_LONG)data.length, digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA384_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA384_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

/// SHA512
+ (NSString *)SHA512String:(NSString *)stirng
{
    if (stirng.length == 0) {
        return nil;
    }
    const char *str = stirng.UTF8String;
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA512_DIGEST_LENGTH];
    // 进行SHA加密
    CC_SHA512(str, (CC_LONG)strlen(str), digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA512_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA512_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

+ (NSString *)SHA512Data:(NSData *)data
{
    if (data == nil) {
        return nil;
    }
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA512_DIGEST_LENGTH];
    // 进行SHA加密
    CC_SHA512(data.bytes, (CC_LONG)data.length, digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA512_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA512_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

#pragma mark HMAC-SHA (HMAC 消息认证机制，可以和任何迭代散列算法搭配使用)
/// HMAC-SHA1
+ (NSString *)hmacSHA1String:(NSString *)stirng hmacKey:(NSString *)key
{
    if (stirng.length == 0 || key.length == 0) {
        return nil;
    }
    const char *str = stirng.UTF8String;
    const char *keyData = key.UTF8String;
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA1_DIGEST_LENGTH];
    // 进行HMAC-SHA加密
    CCHmac(kCCHmacAlgSHA1, keyData, (CC_LONG)strlen(keyData), str, (CC_LONG)strlen(str), digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

+ (NSString *)hmacSHA1Data:(NSData *)data hmacKey:(NSString *)key
{
    if (data == nil || key.length == 0) {
        return nil;
    }
    const char *keyData = key.UTF8String;
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA1_DIGEST_LENGTH];
    // 进行HMAC-SHA加密
    CCHmac(kCCHmacAlgSHA1, keyData, (CC_LONG)strlen(keyData), data.bytes, data.length, digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}


/// HMAC-SHA224
+ (NSString *)hmacSHA224String:(NSString *)stirng hmacKey:(NSString *)key
{
    if (stirng.length == 0 || key.length == 0) {
        return nil;
    }
    const char *str = stirng.UTF8String;
    const char *keyData = key.UTF8String;
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA224_DIGEST_LENGTH];
    // 进行HMAC-SHA加密
    CCHmac(kCCHmacAlgSHA224, keyData, (CC_LONG)strlen(keyData), str, (CC_LONG)strlen(str), digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA224_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA224_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

+ (NSString *)hmacSHA224Data:(NSData *)data hmacKey:(NSString *)key
{
    if (data == nil || key.length == 0) {
        return nil;
    }
    const char *keyData = key.UTF8String;
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA224_DIGEST_LENGTH];
    // 进行HMAC-SHA加密
    CCHmac(kCCHmacAlgSHA224, keyData, (CC_LONG)strlen(keyData), data.bytes, data.length, digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA224_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA224_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

/// HMAC-SHA256
+ (NSString *)hmacSHA256String:(NSString *)stirng hmacKey:(NSString *)key
{
    if (stirng.length == 0 || key.length == 0) {
        return nil;
    }
    const char *str = stirng.UTF8String;
    const char *keyData = key.UTF8String;
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA256_DIGEST_LENGTH];
    // 进行HMAC-SHA加密
    CCHmac(kCCHmacAlgSHA256, keyData, (CC_LONG)strlen(keyData), str, (CC_LONG)strlen(str), digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA256_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA256_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

+ (NSString *)hmacSHA256Data:(NSData *)data hmacKey:(NSString *)key
{
    if (data == nil || key.length == 0) {
        return nil;
    }
    const char *keyData = key.UTF8String;
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA256_DIGEST_LENGTH];
    // 进行HMAC-SHA加密
    CCHmac(kCCHmacAlgSHA256, keyData, (CC_LONG)strlen(keyData), data.bytes, data.length, digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA256_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA256_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

/// HMAC-SHA384
+ (NSString *)hmacSHA384String:(NSString *)stirng hmacKey:(NSString *)key
{
    if (stirng.length == 0 || key.length == 0) {
        return nil;
    }
    const char *str = stirng.UTF8String;
    const char *keyData = key.UTF8String;
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA384_DIGEST_LENGTH];
    // 进行HMAC-SHA加密
    CCHmac(kCCHmacAlgSHA384, keyData, (CC_LONG)strlen(keyData), str, (CC_LONG)strlen(str), digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA384_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA384_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

+ (NSString *)hmacSHA384Data:(NSData *)data hmacKey:(NSString *)key
{
    if (data == nil || key.length == 0) {
        return nil;
    }
    const char *keyData = key.UTF8String;
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA384_DIGEST_LENGTH];
    // 进行HMAC-SHA加密
    CCHmac(kCCHmacAlgSHA384, keyData, (CC_LONG)strlen(keyData), data.bytes, data.length, digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA384_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA384_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

/// HMAC-SHA512
+ (NSString *)hmacSHA512String:(NSString *)stirng hmacKey:(NSString *)key
{
    if (stirng.length == 0 || key.length == 0) {
        return nil;
    }
    const char *str = stirng.UTF8String;
    const char *keyData = key.UTF8String;
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA512_DIGEST_LENGTH];
    // 进行HMAC-SHA加密
    CCHmac(kCCHmacAlgSHA512, keyData, (CC_LONG)strlen(keyData), str, (CC_LONG)strlen(str), digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA512_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA512_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

+ (NSString *)hmacSHA512Data:(NSData *)data hmacKey:(NSString *)key
{
    if (data == nil || key.length == 0) {
        return nil;
    }
    const char *keyData = key.UTF8String;
    // 创建摘要数组，存储加密结果
    unsigned char digest[CC_SHA512_DIGEST_LENGTH];
    // 进行HMAC-SHA加密
    CCHmac(kCCHmacAlgSHA512, keyData, (CC_LONG)strlen(keyData), data.bytes, data.length, digest);
    // 输出为字符串
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA512_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA512_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];   //小写x表示输出的是小写SHA，大写X表示输出的是大写SHA
    }
    return [result copy];
}

@end
