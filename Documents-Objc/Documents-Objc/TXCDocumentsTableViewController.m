//
//  TXCDocumentsTableViewController.m
//  Documents-Objc
//
//  Created by Thomas Cacciatore on 7/17/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import "TXCDocumentsTableViewController.h"
#import "TXCDocument.h"
#import "TXCDocumentController.h"
#import "TXCDocumentDetailViewController.h"

@interface TXCDocumentsTableViewController ()

@end

@implementation TXCDocumentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (TXCDocumentController *)documentController {
    if (_documentController ==  nil) {
        _documentController = [[TXCDocumentController alloc] init];
    }
    return _documentController;
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return self.documentController.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    TXCDocument *document = self.documentController.documents[indexPath.row];
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%li", document.wordCount];
    NSLog(@"Document: %@", document.text);
    NSLog(@"Document: %li", document.wordCount);
    return cell;
}




// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        TXCDocument *document = self.documentController.documents[indexPath.row];
        [self.documentController removeDocument:document];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"CellSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        TXCDocument *document = self.documentController.documents[indexPath.row];
        TXCDocumentDetailViewController *detailVC = segue.destinationViewController;
        detailVC.documentController = self.documentController;
        detailVC.document = document;
    } else if ([segue.identifier isEqualToString:@"AddSegue"]) {
        TXCDocumentDetailViewController *detailVC = segue.destinationViewController;
        detailVC.documentController = self.documentController;
    }
}


@end
