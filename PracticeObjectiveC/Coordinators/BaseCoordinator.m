//
//  BaseCoordinator.m
//  PracticeObjectiveC
//
//  Created by Arjun P A on 22/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import "BaseCoordinator.h"

@interface BaseCoordinator()

@property(nonatomic, strong, nonnull) NSMutableArray<BaseCoordinator *> *childCoordinators;

@end

@implementation BaseCoordinator

-(NSArray<BaseCoordinator *> *)childCoordinators {
    if (_childCoordinators == nil) {
        _childCoordinators = [NSMutableArray array];
    }
    return _childCoordinators;
}

-(void)addChildCoordinator: (BaseCoordinator *)coordinator {
    [self.childCoordinators addObject:coordinator];
}

-(void)removeCoordinator: (BaseCoordinator *)coordinator {
    if([self.childCoordinators containsObject:coordinator]) {
        [self.childCoordinators removeObject:coordinator];
    }
}

@end
