//
//  SKSDocumentsTableViewController.m
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSDocumentsTableViewController.h"
#import "SKSDocumentController.h"
#import "SKSDocument.h"
#import "SKSDetailDocumentViewController.m"

@interface SKSDocumentsTableViewController ()

@end

@implementation SKSDocumentsTableViewController

static NSString * const reuseIdentifier = @"DocumentCell";

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _documentController = [[SKSDocumentController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];

    SKSDocument *document = self.documentController.documents[indexPath.row];

    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d words", document.wordCount];
    
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    SKSDetailDocumentViewController *destinationVC = [segue destinationViewController];
    //ShowDetailDocumentSegue
    //ShowAddDocumentSegue
    if ([destinationVC isKindOfClass:[SKSDetailDocumentViewController class]]) {

        destinationVC.documentController = self.documentController;

        if ([[segue identifier] isEqualToString:@"ShowAddDocumentSegue"]) {
            NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
            destinationVC.document = self.documentController.documents[indexPath.row];
        }
    }
}


@end
