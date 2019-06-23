//
//  APIService.m
//  PracticeObjectiveC
//
//  Created by Arjun P A on 22/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import "APIService.h"
#import "RequestEncoder.h"
#import "APIResponse.h"

@interface APIService()

@property(nonnull, nonatomic, strong) NSURLSession *session;

@end

static NSInteger genericErrorCode = 00002;
static NSString *const genericErrorMessage = @"The request couldn't be completed. Please try again later.";

@implementation APIService

-(instancetype)init {
    self = [super init];
    
    if(self) {
        _session = [NSURLSession sharedSession];
    }
    return self;
}

-(instancetype)initWithSession:(NSURLSession *)session {
    self = [super init];
    
    if(self) {
        _session = session;
    }
    return self;
}

+(NSError *)genericError {
    static dispatch_once_t onceToken;
    __block NSError *genericError = nil;
    dispatch_once(&onceToken, ^{
        @synchronized (self) {
            genericError = [[NSError alloc] initWithDomain:NSURLErrorDomain code:genericErrorCode userInfo:nil];
        }
    });
    return genericError;
}

-(nonnull NSURLSessionDataTask *)request:(NSURLRequest *)request
                                  success:(void (^)(APIResponse *response))successHandler
                                  failure:(void (^)(NSError *error))failureHandler {
    
    NSURLSessionDataTask *dataTask = [self.session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error != nil) {
            failureHandler(error);
            return;
        }
        
        if (![response isKindOfClass:[NSHTTPURLResponse class]]) {
            failureHandler([[self class] genericError]);
            return;
        }
        
        NSHTTPURLResponse *httpURLResponse = (NSHTTPURLResponse *)response;
        
        if (httpURLResponse.statusCode < 200 && httpURLResponse.statusCode > 300) {
            failureHandler([[self class] genericError]);
            return;
        }
        
        NSError *jsonSerializationError = nil;
        
        id jsonResponse = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonSerializationError];
        
        if ((jsonSerializationError != nil) || (![jsonResponse isKindOfClass:[NSDictionary class]])) {
            failureHandler([[self class] genericError]);
            return;
        }
        
        successHandler([[APIResponse alloc] initWithResponse:jsonResponse]);
    }];
    [dataTask resume];
    return dataTask;
}

-(nonnull NSURLSessionDataTask *)requestWithEndpoint:(NSURL *)url
                    method:(APIServiceRequestMethod)method
                parameters:(nullable NSDictionary *)parameters
                   encoder:(id<RequestEncoder>)encoder
                   success:(void (^)(APIResponse *response))successHandler
                   failure:(void (^)(NSError *error))failureHandler {
    NSURLRequest *request = nil;
    if ([encoder respondsToSelector:@selector(encodeWithURL:parameters:)]) {
        request = [encoder encodeWithURL:url parameters:parameters];
    } else {
        request = [NSURLRequest requestWithURL:url];
    }
    
    NSMutableURLRequest *mutableRequest = [request mutableCopy];
    NSString *httpMethod = method == APIServiceRequestMethodPOST ? @"POST" : @"GET";
    [mutableRequest setHTTPMethod:httpMethod];
    
    return [self request:[request copy] success:successHandler failure:failureHandler];
}

@end
