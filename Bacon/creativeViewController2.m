//
//  creativeViewController2.m
//  Bacon
//
//  Created by Emily Nguyen on 28/1/19.
//  Copyright © 2019 DeanO. All rights reserved.
//

#import "creativeViewController2.h"

@interface creativeViewController2 ()

@end

@implementation creativeViewController2
@synthesize description;
- (void)viewDidLoad {
    
    if(_choiceID==0)
    {
    _choices=[NSArray arrayWithObjects:@"Beef",@"Pork",@"Chicken",@"Fish", @"Shrimp",@"Others",nil];
        _imageCatergory=[NSArray arrayWithObjects:@"beef.jpg",@"pork.jpg",@"chicken.jpg",@"fish.jpg",@"shrimp.jpg",@"otherProtein.jpg",nil];
    
    }
    if(_choiceID==1)
    {
    _choices=@[@"Rice",@"Noodle",@"Spagetti",@"Bread",@"Torilla",@"Other"];
        _imageCatergory=[NSArray arrayWithObjects:@"rice.jpg",@"noodle.jpg",@"pasta.jpg",@"bread.jpg",@"tortilla.jpg",@"othercab.jpg",nil];
    }
    if(_choiceID==2)
    {
        _choices=@[@"RoseMarry",@"Cinnamon",@"Dill",@"Ginger",@"Garlic"];
        _imageCatergory=[NSArray arrayWithObjects:@"rosemary.jpg",@"cinnamon.png",@"dill.jpg",@"ginger.jpg",@"garlic.jpg",nil];
        
    }
    if(_choiceID==3)
    {
        _choices=@[@"Carrot",@"Potato",@"Tomato",@"Cucumber",@"Radit",@"Beeroot",@"Bokchoi",@"Cabbage"];
        _imageCatergory=[NSArray arrayWithObjects:@"carrot.jpg",@"potato.jpg",@"tomato.jpg",@"cucumber.jpg",@"radit.jpg",@"beetroot.jpg",@"bokchoy.jpg",@"cabbage.jpg",@"otherProtein.jpg",nil];
        
    }
    if(_choiceID==4)
    {
        _choices=@[@"Peanut",@"Almond",@"Chestnut",@"Walnut"];
            _imageCatergory=[NSArray arrayWithObjects:@"peanut.jpg",@"almond.jpg",@"chestnut.jpg",@"walnut.jpg",nil];
    }
    if(_choiceID==5)
    {
        _choices=@[@"Cheese",@"Fish sauces",@"Chilies",@"Trouffe",@"Tofu"];
            _imageCatergory=[NSArray arrayWithObjects:@"cheese.jpg",@"fsauce.jpg",@"chili.jpg",@"trouffle.jpg",@"tofu.jpg",nil];
    }
    [super viewDidLoad];


}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [_choices count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    static  NSString *RowIdentifier=@"Cell2";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:RowIdentifier];
   
    if(cell==nil){
        cell=[[UITableViewCell alloc]
              initWithStyle:UITableViewCellStyleDefault reuseIdentifier:RowIdentifier];
    }
   cell.imageView.image = [UIImage imageNamed:[_imageCatergory objectAtIndex:indexPath.row]];
    cell.textLabel.text=[_choices objectAtIndex:indexPath.row];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
