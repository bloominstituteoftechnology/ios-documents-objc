//
//  DocumentsTableViewController.m
//  Documents
//
//  Created by Bobby Keffury on 2/5/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import "DocumentsTableViewController.h"
#import "DocumentController.h"
#import "DetailViewController.h"
#import "Document.h"
#import "NSString+WordCount.h"

@interface DocumentsTableViewController ()

@property (nonatomic, readonly) DocumentController *documentController;

@end

@implementation DocumentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _documentController.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    Document *document = [self.documentController.documents objectAtIndex:indexPath.row];
    
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text =  [NSString stringWithFormat:@"%d Words", document.wordCount];
    
    return cell;
}

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


//MARK:  - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"detailSegue"]) {
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        DetailViewController *detailVC = segue.destinationViewController;
        detailVC.documentController = self.documentController;
        detailVC.document = [self.documentController.documents objectAtIndex:indexPath.row];
    } else if ([segue.identifier isEqualToString:@"addDocumentSegue"]) {
        DetailViewController *detailVC = segue.destinationViewController;
        detailVC.documentController = self.documentController;
    }
}

//MARK: - Private Properties

@synthesize documentController = _documentController;
- (DocumentController *)documentController
{
    if (!_documentController) {
        _documentController = [[DocumentController alloc] init];
        
        //Option to add documents.
        [_documentController addDocument:[Document documentWithTitle:@"Test Document" text:@"Here's some text to test."]];
    }
    
    return _documentController;
    
}


@end
