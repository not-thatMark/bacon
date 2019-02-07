//
//  creativeViewController1.m
//  Bacon
//
//  Created by Emily Nguyen on 28/1/19.
//  Copyright © 2019 DeanO. All rights reserved.
//

#import "creativeViewController1.h"
#import "creativeViewController2.h"
@interface creativeViewController1 ()

@end

@implementation creativeViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
        _foodtype=[NSArray arrayWithObjects:@"Protein",@"Cab",@"Seasoning",@"Vegetable",@"Nut",@"Others",nil];
    _imageList=[NSArray arrayWithObjects:@"protein.jpg",@"cab.jpg",@"seasoning.jpg",@"vegetable.jpg",@"nuts.jpg",@"other.jpg",nil];
    
   
#pragma mark - Table view data source
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [_foodtype count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    static  NSString *RowIdentifier=@"Cell1";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:RowIdentifier];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:RowIdentifier ];
        
    }
    
    
   
    
    
   cell.imageView.image = [UIImage imageNamed:[_imageList objectAtIndex:indexPath.row]];
    
    cell.textLabel.text=[_foodtype objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath* path=[self.tableView indexPathForSelectedRow];
    creativeViewController2 *vc;
    vc=[segue destinationViewController];
    vc.choiceID=path.row;
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
