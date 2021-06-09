//
//  JSONUtility.h
//  JSONUtilityExample
//
//  Created by Bracken Spencer.
//  Copyright (c) 2012 Bracken Spencer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSONUtility : NSObject

+ (id)JSONObjectWithData:(NSData *)data;
+ (id)dataWithJSONObject:(NSDictionary *)params;

@end
