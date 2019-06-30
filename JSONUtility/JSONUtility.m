//
//  JSONUtility.m
//  JSONUtilityExample
//
//  Created by brackendev.
//  Copyright (c) 2012 brackendev. All rights reserved.
//

#import "JSONUtility.h"
#import "JSONKit.h"

@implementation JSONUtility

+ (id)JSONObjectWithData:(NSData *)data
{
    Class jsonSerializationClass = NSClassFromString(@"NSJSONSerialization");
    if (!jsonSerializationClass) {
        NSLog(@"JSONUtility: Using JSONKit");
        return [data objectFromJSONData]; // JSONKit
    } else {
        NSLog(@"JSONUtility: Using NSJSONSerialization");
        NSError *jsonParsingError = nil;
        return [NSJSONSerialization JSONObjectWithData:data
                                               options:0
                                                 error:&jsonParsingError];
    }
}

+ (id)dataWithJSONObject:(NSDictionary *)params
{
    Class jsonSerializationClass = NSClassFromString(@"NSJSONSerialization");
    if (!jsonSerializationClass) {
        NSLog(@"JSONUtility: Using JSONKit");
        return [params JSONData]; // JSONKit
    } else {
        NSLog(@"JSONUtility: Using NSJSONSerialization");
        NSError *jsonParsingError = nil;
        return [NSJSONSerialization dataWithJSONObject:params
                                               options:0
                                                 error:&jsonParsingError];
    }
}

@end
