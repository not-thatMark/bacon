//
//  detailPageViewController.h
//  Bacon
//
//  Created by Emily Nguyen on 28/1/19.
//  Copyright © 2019 DeanO. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface detailPageViewController : UIViewController
@property (strong, nonatomic) NSString *mealChoose;
@property(strong, nonatomic) NSString *imageload;
@property(strong, nonatomic) NSString *ingridientContent;
@property(strong, nonatomic) NSString *guideContent;
@property NSInteger mealChooseID;
@property (weak, nonatomic) IBOutlet UILabel *mealTitle;
@property (weak, nonatomic) IBOutlet UIImageView *ImageContainer;
@property (weak, nonatomic) IBOutlet UITextView *ingredient;
@property (weak, nonatomic) IBOutlet UITextView *stepGuide;


@end

NS_ASSUME_NONNULL_END
