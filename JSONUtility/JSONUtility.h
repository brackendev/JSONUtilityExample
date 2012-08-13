//
//  JSONUtility.h
//  JSONUtilityExample
//
//  Created by bracken-dev on 8/1/12.
//  Copyright (c) 2012 bracken-dev. All rights reserved.
//
//  http://github.com/bracken-dev
//

#import <Foundation/Foundation.h>

@interface JSONUtility : NSObject

+ (id)JSONObjectWithData:(NSData *)data;
+ (id)dataWithJSONObject:(NSDictionary *)params;

@end
