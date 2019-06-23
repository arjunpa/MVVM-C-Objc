//
//  MovieListServiceClient.m
//  PracticeObjectiveC
//
//  Created by Arjun P A on 23/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import "MovieListServiceClient.h"
#import "APIService.h"

@interface MovieListServiceClient()

@property(nonatomic, strong) APIService *apiService;

@end

@implementation MovieListServiceClient

-(instancetype)initWithAPIService:(APIService *)apiService {
    self = [super init];
    
    if(self) {
        _apiService = apiService;
    }
    return self;
}

-(instancetype)init {
    self = [super init];
    
    if(self) {
        _apiService = [APIService new];
    }
    return self;
}

@end
