//
//  AppDelegate.h
//  PracticeObjectiveC
//
//  Created by Arjun P A on 20/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "AppCoordinator.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property(nonatomic, readonly, strong) AppCoordinator *appCoordinator;
@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

