//
//  RequestEncoder.h
//  PracticeObjectiveC
//
//  Created by Arjun P A on 22/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol RequestEncoder <NSObject>
-(nonnull NSURLRequest *)encodeWithURL: (nonnull NSURL *)url parameters: (nullable NSDictionary *)parameters;
@end

NS_ASSUME_NONNULL_END
