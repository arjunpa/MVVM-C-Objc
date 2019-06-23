//
//  AppCoordinator.m
//  PracticeObjectiveC
//
//  Created by Arjun P A on 21/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import "AppCoordinator.h"
#import "MainViewCoordinator.h"

@interface AppCoordinator()

@property(nonatomic, strong) UIWindow *mainWindow;
@property(nonatomic, strong) UINavigationController *navigationController;

@end


@implementation AppCoordinator

-(instancetype)initWithWindow: (UIWindow *)window {
    
    self = [super init];
    
    if(self) {
        _mainWindow = window;
    }
    
    return self;
}

-(void)start {
    self.navigationController = [[UINavigationController alloc] init];
    [self.mainWindow setRootViewController:self.navigationController];
    [self.mainWindow makeKeyAndVisible];
    [self runMainCoordinator];
}

-(void)runMainCoordinator {
    MainViewCoordinator *mainCoordinator = [[MainViewCoordinator alloc] initWithRootViewController:self.navigationController];
    [self addChildCoordinator:mainCoordinator];
    [mainCoordinator start];
}

@end
