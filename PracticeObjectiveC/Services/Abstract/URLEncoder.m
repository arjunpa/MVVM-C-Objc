//
//  URLEncoder.m
//  PracticeObjectiveC
//
//  Created by Arjun P A on 22/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import "URLEncoder.h"

@implementation URLEncoder

+(instancetype)defaultInstance {
    return [[self class] new];
}

-(nonnull NSURLRequest *)encodeWithURL: (nonnull NSURL *)url parameters: (nullable NSDictionary *)parameters {
    NSURLComponents *components = [NSURLComponents componentsWithURL:url resolvingAgainstBaseURL:NO];
    NSMutableArray<NSURLQueryItem *> *queryItems = nil;
    if (parameters != nil) {
        for (NSString *key in parameters){
            if (queryItems == nil) {
                queryItems = [NSMutableArray arrayWithCapacity:parameters.allKeys.count];
            }
            
            id value = [parameters valueForKey:key];
            
            if ([value isKindOfClass:[NSString class]]) {
                [queryItems addObject:[NSURLQueryItem queryItemWithName:key value:value]];
            }
        }
        components.queryItems = [queryItems copy];
    }
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:components.URL];
    return [request copy];
}

@end
