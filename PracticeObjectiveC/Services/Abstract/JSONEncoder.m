//
//  JSONEncoder.m
//  PracticeObjectiveC
//
//  Created by Arjun P A on 22/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import "JSONEncoder.h"

@implementation JSONEncoder

+(instancetype)defaultInstance {
    return [[self class] new];
}

-(nonnull NSURLRequest *)encodeWithURL: (nonnull NSURL *)url parameters: (nullable NSDictionary *)parameters {
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    
    if (parameters == nil) {
        NSError *error = nil;
        NSData *data = [NSJSONSerialization dataWithJSONObject:parameters options:0 error:&error];
        if (error == nil) {
            NSLog(@"%@; Parameter serialization failed with error code - %zd and message - %@", NSStringFromClass([self class]), error.code, error.description);
        }
        
        [request addValue:@"Content-Type" forHTTPHeaderField:@"application/json"];
        [request setHTTPBody:data];
    }

    return [request copy];
}

@end
