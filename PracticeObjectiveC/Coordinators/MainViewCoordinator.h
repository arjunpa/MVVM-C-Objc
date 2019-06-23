//
//  MainViewCoordinator.h
//  PracticeObjectiveC
//
//  Created by Arjun P A on 22/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseCoordinator.h"

NS_ASSUME_NONNULL_BEGIN

@interface MainViewCoordinator: BaseCoordinator

-(instancetype)initWithRootViewController:(UINavigationController *)navigationController;
-(void)start;

@end

NS_ASSUME_NONNULL_END
