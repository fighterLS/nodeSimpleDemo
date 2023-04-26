//
//  ZYBMacHeader.m
//  macDemoSDK
//
//  Created by 李赛 on 2023/4/19.
//
#import <Foundation/Foundation.h>
#import "ZYBMacHeader.h"
#include "helloWord.hpp"
#import <AppKit/AppKit.h>
@interface ZmsObjcTools : NSObject
@end
@implementation ZmsObjcTools

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

@end
namespace demo{
    int64_t getDiskTotalSpace(){
        NSFileManager*fm = [NSFileManager defaultManager];
        NSString *documentPath =NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
        NSDictionary *attr = [fm attributesOfFileSystemForPath: documentPath error:nil];
        int64_t   totalSpace = [[attr objectForKey:NSFileSystemSize] doubleValue]/(1024*1024);
        return totalSpace;
    }
    
    int64_t getDiskFreeSpace(){
        NSFileManager*fm = [NSFileManager defaultManager];
        NSString *documentPath =NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
        NSDictionary *attr = [fm attributesOfFileSystemForPath: documentPath error:nil];
        int64_t   freeSpace = [[attr objectForKey:NSFileSystemFreeSize] doubleValue]/(1024*1024);
        return freeSpace;
    }
}
