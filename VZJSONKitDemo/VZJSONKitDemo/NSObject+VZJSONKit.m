//
//  NSObject+VZJSONKit.m
//  VZJSONKitDemo
//
//  Created by victor zhang on 15/11/29.
//  Copyright © 2015年 victor zhang. All rights reserved.
//

#import "NSObject+VZJSONKit.h"
#import <libkern/OSAtomic.h>
#import <objc/message.h>
#import <objc/runtime.h>

//Foundation class type
typedef NS_ENUM(NSUInteger, VZEndcodingType){
    VZEndcodingTypeNSUnknown = 0,
    VZEndcodingTypeNSString,
    VZEndcodingTypeNSMutableString,
    VZEndcodingTypeNSValue,
    VZEndcodingTypeNSNumber,
    VZEndcodingTypeNSDecimalNumber,
    VZEndcodingTypeNSData,
    VZEndcodingTypeNSMutableData,
    VZEndcodingTypeNSDate,
    VZEndcodingTypeNSURL,
    VZEndcodingTypeNSArray,
    VZEndcodingTypeNSMutableArray,
    VZEndcodingTypeNSDictionary,
    VZEndcodingTypeNSMutableDictionary,
    VZEndcodingTypeNSSet,
    VZEndcodingTypeNSMutableSet
};

//get the foundation class type from property info

static __attribute__((always_inline)) VZEndcodingType VZGetTypeFromClass(Class cls) {
    if (!cls) return VZEndcodingTypeNSUnknown;
    if ([cls isSubclassOfClass:[NSMutableString class]]) return VZEndcodingTypeNSMutableString;
    if ([cls isSubclassOfClass:[NSString class]]) return VZEndcodingTypeNSString;
    if ([cls isSubclassOfClass:[NSDecimalNumber class]]) return VZEndcodingTypeNSDecimalNumber;
    if ([cls isSubclassOfClass:[NSNumber class]]) return VZEndcodingTypeNSNumber;
    if ([cls isSubclassOfClass:[NSValue class]]) return VZEndcodingTypeNSValue;
    if ([cls isSubclassOfClass:[NSMutableData class]]) return VZEndcodingTypeNSMutableData;
    if ([cls isSubclassOfClass:[NSData class]]) return VZEndcodingTypeNSData;
    if ([cls isSubclassOfClass:[NSDate class]]) return VZEndcodingTypeNSDate;
    if ([cls isSubclassOfClass:[NSURL class]]) return VZEndcodingTypeNSURL;
    if ([cls isSubclassOfClass:[NSMutableArray class]]) return VZEndcodingTypeNSMutableArray;
    if ([cls isSubclassOfClass:[NSArray class]]) return VZEndcodingTypeNSArray;
    if ([cls isSubclassOfClass:[NSMutableDictionary class]]) return VZEndcodingTypeNSMutableDictionary;
    if ([cls isSubclassOfClass:[NSDictionary class]]) return VZEndcodingTypeNSDictionary;
    if ([cls isSubclassOfClass:[NSMutableSet class]]) return VZEndcodingTypeNSMutableSet;
    if ([cls isSubclassOfClass:[NSSet class]]) return VZEndcodingTypeNSSet;
    return VZEndcodingTypeNSUnknown;
}

//check the type is a number

@implementation NSObject (VZJSONKit)

@end
