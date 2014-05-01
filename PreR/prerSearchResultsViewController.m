//
//  prerSearchResultsViewController.m
//  PreR
//
//  Created by Mark Anthony Corpuz on 4/28/14.
//
//

#import "prerSearchResultsViewController.h"
#import "prerCustomCell.h"

@interface prerSearchResultsViewController ()

@end



@implementation prerSearchResultsViewController
{
   NSArray *services, *hospitals, *cptcodes, *prices, *distances;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

   
   services = [NSArray arrayWithObjects:@"Ankle X-Ray", @"Heart-Transplant", @"Kidney Transplant", @"ACL replacement", nil];
   hospitals = [NSArray arrayWithObjects:@"Washington Memorial", @"Serra Vista", @"St. Joseph's", @"Serra Vista", nil];
   cptcodes = [NSArray arrayWithObjects:@"12345",@"54332",@"54332",@"10815", nil];
   prices = [NSArray arrayWithObjects:@"$300",@"$6000",@"$4500",@"$7000", nil];
   distances = [NSArray arrayWithObjects:@"1mi", @"300mi", @"360.5mi", @"1mi", nil];
   
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //static NSString *CellIdentifier = @"Cell";
   prerCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"prerCustomCell"];
   
   //cell.nameLabel.text = [tableData objectAtIndex:indexPath.row];
   
   cell.serviceLabel.text = [services objectAtIndex:indexPath.row];
   cell.hospitalLabel.text = [hospitals objectAtIndex:indexPath.row];
   cell.cptLabel.text = [cptcodes objectAtIndex:indexPath.row];
   cell.distanceLabel.text = [distances objectAtIndex:indexPath.row];
   cell.priceLabel.text = [prices objectAtIndex:indexPath.row];

   
   
  /* cell.serviceLabel.text = [NSString stringWithFormat:@"fake data"];
   cell.hospitalLabel.text = [NSString stringWithFormat:@"real data"];
   cell.cptLabel.text = [NSString stringWithFormat:@"12345"];
   cell.priceLabel.text = [NSString stringWithFormat:@"$Too Much"];
   cell.distanceLabel.text = [NSString stringWithFormat:@"10000 mi"];*/
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
