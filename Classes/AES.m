//
//  AES.m
//  IAPDemo
//
//  Created by 刘鹏i on 2020/7/23.
//  Copyright © 2020 liu. All rights reserved.
//

#import "AES.h"
#import <CommonCrypto/CommonCryptor.h>

@implementation AES
// hex s


///// AES加密
//+ (NSString *)encrypt:(NSString *)message password:(NSString *)password {
//  NSData *encryptedData = [[message dataUsingEncoding:NSUTF8StringEncoding] AES256EncryptedDataUsingKey:[[password dataUsingEncoding:NSUTF8StringEncoding] SHA256Hash] error:nil];
//  NSString *base64EncodedString = [NSString base64StringFromData:encryptedData length:[encryptedData length]];
//  return base64EncodedString;
//}
//
///// AES解密
//+ (NSString *)decrypt:(NSString *)base64EncodedString password:(NSString *)password {
//  NSData *encryptedData = [NSData base64DataFromString:base64EncodedString];
//  NSData *decryptedData = [encryptedData decryptedAES256DataUsingKey:[[password dataUsingEncoding:NSUTF8StringEncoding] SHA256Hash] error:nil];
//  return [[NSString alloc] initWithData:decryptedData encoding:NSUTF8StringEncoding];
//}
//
//
//#pragma mark - Base64
//
//#pragma mark - AES Encrypt
//// default AES Encrypt, key -> SHA384(key).sub(0, 32), iv -> SHA384(key).sub(32, 16)
//+ (CocoaSecurityResult *)aesEncrypt:(NSString *)data key:(NSString *)key
//{
//    CocoaSecurityResult * sha = [self sha384:key];
//    NSData *aesKey = [sha.data subdataWithRange:NSMakeRange(0, 32)];
//    NSData *aesIv = [sha.data subdataWithRange:NSMakeRange(32, 16)];
//
//    return [self aesEncrypt:data key:aesKey iv:aesIv];
//}
//#pragma mark AES Encrypt 128, 192, 256
//+ (CocoaSecurityResult *)aesEncrypt:(NSString *)data hexKey:(NSString *)key hexIv:(NSString *)iv
//{
//    CocoaSecurityDecoder *decoder = [CocoaSecurityDecoder new];
//    NSData *aesKey = [decoder hex:key];
//    NSData *aesIv = [decoder hex:iv];
//
//    return [self aesEncrypt:data key:aesKey iv:aesIv];
//}
//+ (CocoaSecurityResult *)aesEncrypt:(NSString *)data key:(NSData *)key iv:(NSData *)iv
//{
//    return [self aesEncryptWithData:[data dataUsingEncoding:NSUTF8StringEncoding] key:key iv:iv];
//}
//+ (CocoaSecurityResult *)aesEncryptWithData:(NSData *)data key:(NSData *)key iv:(NSData *)iv
//{
//    // check length of key and iv
//    if ([iv length] != 16) {
//        @throw [NSException exceptionWithName:@"Cocoa Security"
//                                       reason:@"Length of iv is wrong. Length of iv should be 16(128bits)"
//                                     userInfo:nil];
//    }
//    if ([key length] != 16 && [key length] != 24 && [key length] != 32 ) {
//        @throw [NSException exceptionWithName:@"Cocoa Security"
//                                       reason:@"Length of key is wrong. Length of iv should be 16, 24 or 32(128, 192 or 256bits)"
//                                     userInfo:nil];
//    }
//
//    // setup output buffer
//    size_t bufferSize = [data length] + kCCBlockSizeAES128;
//    void *buffer = malloc(bufferSize);
//
//    // do encrypt
//    size_t encryptedSize = 0;
//    CCCryptorStatus cryptStatus = CCCrypt(kCCEncrypt,
//                                          kCCAlgorithmAES128,
//                                          kCCOptionPKCS7Padding,
//                                          [key bytes],     // Key
//                                          [key length],    // kCCKeySizeAES
//                                          [iv bytes],       // IV
//                                          [data bytes],
//                                          [data length],
//                                          buffer,
//                                          bufferSize,
//                                          &encryptedSize);
//    if (cryptStatus == kCCSuccess) {
//        CocoaSecurityResult *result = [[CocoaSecurityResult alloc] initWithBytes:buffer length:encryptedSize];
//        free(buffer);
//
//        return result;
//    }
//    else {
//        free(buffer);
//        @throw [NSException exceptionWithName:@"Cocoa Security"
//                                       reason:@"Encrypt Error!"
//                                     userInfo:nil];
//        return nil;
//    }
//}
//#pragma mark - AES Decrypt
//// default AES Decrypt, key -> SHA384(key).sub(0, 32), iv -> SHA384(key).sub(32, 16)
//+ (CocoaSecurityResult *)aesDecryptWithBase64:(NSString *)data key:(NSString *)key
//{
//    CocoaSecurityResult * sha = [self sha384:key];
//    NSData *aesKey = [sha.data subdataWithRange:NSMakeRange(0, 32)];
//    NSData *aesIv = [sha.data subdataWithRange:NSMakeRange(32, 16)];
//
//    return [self aesDecryptWithBase64:data key:aesKey iv:aesIv];
//}
//#pragma mark AES Decrypt 128, 192, 256
//+ (CocoaSecurityResult *)aesDecryptWithBase64:(NSString *)data hexKey:(NSString *)key hexIv:(NSString *)iv
//{
//    CocoaSecurityDecoder *decoder = [CocoaSecurityDecoder new];
//    NSData *aesKey = [decoder hex:key];
//    NSData *aesIv = [decoder hex:iv];
//
//    return [self aesDecryptWithBase64:data key:aesKey iv:aesIv];
//}
//+ (CocoaSecurityResult *)aesDecryptWithBase64:(NSString *)data key:(NSData *)key iv:(NSData *)iv
//{
//    CocoaSecurityDecoder *decoder = [CocoaSecurityDecoder new];
//    return [self aesDecryptWithData:[decoder base64:data] key:key iv:iv];
//}
//+ (CocoaSecurityResult *)aesDecryptWithData:(NSData *)data key:(NSData *)key iv:(NSData *)iv
//{
//    // check length of key and iv
//    if ([iv length] != 16) {
//        @throw [NSException exceptionWithName:@"Cocoa Security"
//                                       reason:@"Length of iv is wrong. Length of iv should be 16(128bits)"
//                                     userInfo:nil];
//    }
//    if ([key length] != 16 && [key length] != 24 && [key length] != 32 ) {
//        @throw [NSException exceptionWithName:@"Cocoa Security"
//                                       reason:@"Length of key is wrong. Length of iv should be 16, 24 or 32(128, 192 or 256bits)"
//                                     userInfo:nil];
//    }
//
//    // setup output buffer
//    size_t bufferSize = [data length] + kCCBlockSizeAES128;
//    void *buffer = malloc(bufferSize);
//
//    // do encrypt
//    size_t encryptedSize = 0;
//    CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt,
//                                          kCCAlgorithmAES128,
//                                          kCCOptionPKCS7Padding,
//                                          [key bytes],     // Key
//                                          [key length],    // kCCKeySizeAES
//                                          [iv bytes],       // IV
//                                          [data bytes],
//                                          [data length],
//                                          buffer,
//                                          bufferSize,
//                                          &encryptedSize);
//    if (cryptStatus == kCCSuccess) {
//        CocoaSecurityResult *result = [[CocoaSecurityResult alloc] initWithBytes:buffer length:encryptedSize];
//        free(buffer);
//
//        return result;
//    }
//    else {
//        free(buffer);
//        @throw [NSException exceptionWithName:@"Cocoa Security"
//                                       reason:@"Decrypt Error!"
//                                     userInfo:nil];
//        return nil;
//    }
//}
@end

