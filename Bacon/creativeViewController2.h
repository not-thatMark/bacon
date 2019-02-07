//
//  creativeViewController2.h
//  Bacon
//
//  Created by Emily Nguyen on 28/1/19.
//  Copyright © 2019 DeanO. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface creativeViewController2 : UITableViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) NSArray *choices;
@property NSInteger choiceID;
@property(strong, nonatomic) NSArray *imageCatergory;

@end

NS_ASSUME_NONNULL_END
