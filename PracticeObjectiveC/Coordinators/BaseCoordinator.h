//
//  BaseCoordinator.h
//  PracticeObjectiveC
//
//  Created by Arjun P A on 22/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseCoordinator : NSObject
-(void)addChildCoordinator: (BaseCoordinator *)coordinator;
-(void)removeCoordinator: (BaseCoordinator *)coordinator;
@end

NS_ASSUME_NONNULL_END
