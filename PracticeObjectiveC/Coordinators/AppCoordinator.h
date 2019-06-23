//
//  AppCoordinator.h
//  PracticeObjectiveC
//
//  Created by Arjun P A on 21/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieListViewController.h"
#import "BaseCoordinator.h"

NS_ASSUME_NONNULL_BEGIN

@interface AppCoordinator : BaseCoordinator

-(instancetype)initWithWindow: (UIWindow *)window;
-(void)start;

@property(nonatomic, readonly, strong) UIWindow *mainWindow;
@property(nonatomic, readonly, strong) UIViewController *rootViewController;
@property(nonatomic, readonly, strong) UINavigationController *navigationController;

@end

NS_ASSUME_NONNULL_END
