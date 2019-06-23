//
//  APIService.h
//  PracticeObjectiveC
//
//  Created by Arjun P A on 22/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import <Foundation/Foundation.h>

@class APIResponse;

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, APIServiceRequestMethod) {
    APIServiceRequestMethodPOST,
    APIServiceRequestMethodGET
};

@interface APIService : NSObject

-(instancetype)initWithSession: (NSURLSession *)session;
-(nonnull NSURLSessionDataTask *)request:(NSURLRequest *)request success: (void (^)(APIResponse *response))successHandler failure: (void (^)(NSError *error))failureHandler;

@end

NS_ASSUME_NONNULL_END
