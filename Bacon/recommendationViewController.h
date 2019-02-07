//
//  recommendationViewController.h
//  Bacon
//
//  Created by Emily Nguyen on 28/1/19.
//  Copyright © 2019 DeanO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "detailPageViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface recommendationViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) NSArray *recommendationList;

@property(strong, nonatomic) NSArray *mealList;
@end

NS_ASSUME_NONNULL_END
