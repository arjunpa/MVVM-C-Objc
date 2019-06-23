//
//  MovieListServiceClient.h
//  PracticeObjectiveC
//
//  Created by Arjun P A on 23/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import <Foundation/Foundation.h>
@class APIService;

NS_ASSUME_NONNULL_BEGIN

@interface MovieListServiceClient : NSObject

-(instancetype)initWithAPIService:(APIService *)apiService;

@end

NS_ASSUME_NONNULL_END
