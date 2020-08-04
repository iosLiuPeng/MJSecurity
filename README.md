# MJSecurity  
  
MJSecurity类提供多平台通用方法  

编码算法：  
Base64  
  
Hash算法：  
javaHash  
MD5  
SHA  
  
加密算法：  
AES  
DES  
RSA  
  
  
1.全部使用系统自带库，不需要导第三方库  
2.全部算法经过验证：ios自身验证通过，java、php也都验证通过  
  
3.Base64 支持Data、String格式之间的互转  
  
4.Hash 支持javaHash算法  
  
5.MD5 支持对文件MD5，做过性能测试  
6.MD5 支持HMAC模式  
  
7.SHA 支持SHA1、SHA224、SHA256、SHA384、SHA512  
8.SHA 支持HMAC模式  
  
9.AES 支持CBC、ECB两种模式  
  
10.DES 支持CBC、ECB两种模式  
11.DES 支持3DES算法  
  
12.RSA 支持多种读取密钥方式，且同时支持读取PKCS1、PKCS8两种格式密钥  
13.RSA 支持私钥加密，公钥解密  
14.RSA 有(ios2.0)、(ios10.0)两个版本的API  

