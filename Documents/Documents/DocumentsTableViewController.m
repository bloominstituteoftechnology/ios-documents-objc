//
//  DocumentsTableViewController.m
//  Documents
//
//  Created by Joel Groomer on 2/4/20.
//  Copyright © 2020 Julltron. All rights reserved.
//

#import "DocumentsTableViewController.h"
#import "DocumentController.h"
#import "Document.h"
#import "DocumentDetailViewController.h"

@interface DocumentsTableViewController ()

@property DocumentController *documentController;

@end

@implementation DocumentsTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    if (self = [super initWithCoder:coder]) {
        _documentController = [[DocumentController alloc] init];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.documentController.documents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    Document *doc = self.documentController.documents[indexPath.row];
    cell.textLabel.text = doc.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:(@"%d words"), doc.wordCount];
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        Document *doc = self.documentController.documents[indexPath.row];
        [self.documentController delDocument:doc];
        
        // Delete the row from the table
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    DocumentDetailViewController *vc = [segue destinationViewController];
    vc.documentController = self.documentController;
    
    if ([segue.identifier isEqualToString:(@"ShowDocument")]) {
        vc.document = self.documentController.documents[self.tableView.indexPathForSelectedRow.row];
    }
}

@end
