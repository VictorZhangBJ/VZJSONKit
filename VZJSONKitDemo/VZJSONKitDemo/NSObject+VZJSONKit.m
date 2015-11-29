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

//Foundation class type
typedef NS_ENUM(NSUInteger, VZEndcodingType){
    VZEndcodingTypeNSUnknown = 0,
    VZEndcodingTypeNSSting,
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
    
}

@implementation NSObject (VZJSONKit)

@end
