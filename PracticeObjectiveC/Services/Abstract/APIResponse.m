//
//  APIResponse.m
//  PracticeObjectiveC
//
//  Created by Arjun P A on 22/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import "APIResponse.h"

@interface APIResponse()

@property(nonnull) NSDictionary *response;

@end

@implementation APIResponse

-(instancetype)initWithResponse:(NSDictionary *)response {
    self = [super init];
    
    if(self) {
        _response = response;
    }
    return self;
}

@end
