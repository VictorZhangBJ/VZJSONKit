//
//  NSObject+VZJSONKit.h
//  VZJSONKitDemo
//
//  Created by victor zhang on 15/11/29.
//  Copyright © 2015年 victor zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  A framework enable you to convert json to objcet or object to json.
 */
@interface NSObject (VZJSONKit)

+(instancetype)modelWithJSON:(id)josn;

+(instancetype)modelWithDictionary:(NSDictionary *)dic;

-(id)modelToJSONObject;

-(NSData *)modelToJSONData;

-(NSString *)modelToJSONString;

-(id)modelCopy;

-(void)modelEncodeWithCoder:(NSCoder *)aCoder;

-(id)modelInitWithCoder:(NSCoder *)aDecoder;

-(NSUInteger)modelHash;

-(BOOL)modelIsEqual:(id)model;


@end


@interface NSArray (VZJSONKit)

+(NSArray *)modelArrayWithClass:(Class)cls json:(id)json;

@end


@interface NSDictionary (VZJSONKit)

+(NSDictionary *)modelDictionaryWithClass:(Class)cls json:(id)json;

@end

@protocol VZJSONKit <NSObject>

@optional

+(NSDictionary *)modelCustomPropertyMapper;


+(NSDictionary *)modelContainerPropertyGenericClass;

+(Class)modelCustomClassForDictionary:(NSDictionary *)dictionary;

+(NSArray *)modelPropertyBlackList;

+(NSArray *)modelPropertyWhiteList;

@end