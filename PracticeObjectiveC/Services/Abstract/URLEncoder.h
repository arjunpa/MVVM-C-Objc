//
//  URLEncoder.h
//  PracticeObjectiveC
//
//  Created by Arjun P A on 22/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequestEncoder.h"

NS_ASSUME_NONNULL_BEGIN

@interface URLEncoder : NSObject<RequestEncoder>

+(instancetype)defaultInstance;

@end

NS_ASSUME_NONNULL_END
