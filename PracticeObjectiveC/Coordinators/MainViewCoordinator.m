//
//  MainViewCoordinator.m
//  PracticeObjectiveC
//
//  Created by Arjun P A on 22/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import "MainViewCoordinator.h"
#import "MovieListViewController.h"

@interface MainViewCoordinator()

@property(nonatomic, nullable, weak) UINavigationController *navigationController;

@end

@implementation MainViewCoordinator

-(instancetype)initWithRootViewController:(UINavigationController *)navigationController {
    self = [super init];
    
    if(self) {
        _navigationController = navigationController;
    }
    return self;
}

-(void)start {
    MovieListViewController *movieListViewController = [MovieListViewController instanceFromStoryboard];
    [self.navigationController pushViewController:movieListViewController animated:false];
}

@end
