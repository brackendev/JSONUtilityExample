//
//  JSONUtility.h
//  JSONUtilityExample
//
//  Created by brackendev.
//  Copyright (c) 2012 brackendev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSONUtility : NSObject

+ (id)JSONObjectWithData:(NSData *)data;
+ (id)dataWithJSONObject:(NSDictionary *)params;

@end
