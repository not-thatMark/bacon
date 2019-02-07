//
//  detailPageViewController.m
//  Bacon
//
//  Created by Emily Nguyen on 28/1/19.
//  Copyright © 2019 DeanO. All rights reserved.
//

#import "detailPageViewController.h"

@interface detailPageViewController ()

@end

@implementation detailPageViewController

@synthesize mealChoose, mealChooseID,imageload,mealTitle,ImageContainer,ingredient,ingridientContent,stepGuide,guideContent;
- (void)viewDidLoad {
    [super viewDidLoad];
    if(mealChooseID==0)
    {
        mealChoose=@"Som Tam";
        imageload=@"som-tam.jpg";
    }
    if(mealChooseID==1)
    {
        mealChoose=@"NY Steak";
        imageload=@"steak.jpg";
    }
    if(mealChooseID==2)
    {
        mealChoose=@"Tacos";
        imageload=@"tacos.jpg";
    }
    if(mealChooseID==3)
    {
        mealChoose=@"Pizza";
        imageload=@"pizza.jpg";
    }
    if(mealChooseID==4)
    {
        mealChoose=@"Mac N Cheese";
        imageload=@"macncheese.jpg";
    }
    ingridientContent=@"400g can each brown lentils, butter beans & borlott, beans, rinsed, drained, 2 tbs tahini, 2 garlic cloves, 1 bunch flat-leaf parsley, roughly chopped, 1 tsp ground cumin,Finely grated zest & juice of 1 lemon";
    guideContent=@"During cooking, aim to cook your steak medium-rare to medium – any more and you’ll be left with a tough piece of meat. Turning it every minute or so will make sure you get a really even cook. After cooking, leave it to rest and rub with a little extra virgin olive oil or butter for an incredible, juicy steak.";
    ingredient.text=[NSString stringWithFormat:ingridientContent];
    stepGuide.text=[NSString stringWithFormat:guideContent];
    self.mealTitle.text=mealChoose;
    [ImageContainer setImage:[UIImage imageNamed:imageload]];
   [ImageContainer setContentMode:UIViewContentModeScaleAspectFit];
   
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
