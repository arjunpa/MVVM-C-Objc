//
//  MovieListViewController.m
//  PracticeObjectiveC
//
//  Created by Arjun P A on 20/06/19.
//  Copyright © 2019 Arjun P A. All rights reserved.
//

#import "MovieListViewController.h"

@interface MovieListViewController ()

@end

@implementation MovieListViewController

static NSString *const storyboardName = @"MovieList";

NSString *const storyboardIdentifier = @"MovieListViewController";

+(instancetype)instanceFromStoryboard {
    return [[UIStoryboard storyboardWithName:storyboardName bundle:nil] instantiateViewControllerWithIdentifier:storyboardIdentifier];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
