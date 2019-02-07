//
//  creativeViewController1.h
//  Bacon
//
//  Created by Emily Nguyen on 28/1/19.
//  Copyright © 2019 DeanO. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface creativeViewController1 : UITableViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong ,nonatomic) NSArray *foodtype;
@property(strong, nonatomic) NSArray *imageList;
@end

NS_ASSUME_NONNULL_END
