//
//  VZClassInfo.h
//  VZJSONKitDemo
//
//  Created by victor zhang on 15/12/1.
//  Copyright © 2015年 victor zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

//type encoding type
typedef NS_OPTIONS(NSUInteger, VZEncodingType){
    VZEncodingTypeMask = 0x1F,  //mask of type value
    VZEncodingTypeUnknown = 0,  //unknown
    VZEncodingTypeVoid = 1,     //void
    VZEncodingTypeBool = 2,     //bool
    VZEncodingTypeInt8 = 3,     //char / BOOL
    VZEncodingTypeUInt8 = 4,    //unsigned char
    VZEncodingTypeInt16 = 5,    //short
    VZEncodingTypeUInt16 = 6,   //unsigned short
    VZEncodingTypeInt32 = 7,    //int
    VZEncodingTypeUInt32 = 8,   //unsigned int
    VZEncodingTypeInt64 = 9,    //long long
    VZEncodingTypeUInt64 = 10,  //unsigned long long
    VZEncodingTypeFloat = 11,   //float
    VZEncodingTypeDouble = 12,  //double
    VZEncodingTypeLongDouble = 13,//long double
    VZEncodingTypeObject = 14,  //id
    VZEncodingTypeClass = 15,   //Class
    VZEncodingTypeSEL = 16,     //SEL
    VZEncodingTypeBlock = 17,   //block
    VZEncodingTypePointer = 18, //void *
    VZEncodingTypeStruct = 19,  //struct
    VZEncodingTypeUnion = 20,   //union
    VZEncodingTypeCString = 21, //char*
    VZEncodingTypeCArray = 22,  //char[num]
    
    
};



@interface VZClassInfo : NSObject



@end
