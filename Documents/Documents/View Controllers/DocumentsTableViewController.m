//
//  DocumentsTableViewController.m
//  Documents
//
//  Created by Madison Waters on 2/27/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import "DocumentsTableViewController.h"
#import "DetailViewController.h"
#import "DocumentController.h"
#import "Document.h"

@interface DocumentsTableViewController ()

@property (nonatomic, readonly) DocumentController *documentController;

@end

@implementation DocumentsTableViewController

#pragma mark - Properties

@synthesize documentController = _documentController;
- (DocumentController *)documentController {
    if (_documentController == nil) {
        _documentController = [[DocumentController alloc] init];
    }
    return _documentController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}

//DocCell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocCell" forIndexPath:indexPath];
    
    Document *document = self.documentController.documents[indexPath.row];
    
    cell.textLabel.text = document.text;
    
    NSString *wordCountString = [@(document.wordCount) stringValue];
    cell.detailTextLabel.text = wordCountString;
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        Document *document = self.documentController.documents[indexPath.row];
        [self.documentController removeDocument:document];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"documentDetail"]) { // documentDetail
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailViewController *detailVC = segue.destinationViewController;
        detailVC.documentController = self.documentController;
        detailVC.document = self.documentController.documents[indexPath.row];
    }
    if ([segue.identifier isEqualToString:@"addDocument"]) { // addDocument
        DetailViewController *detailVC = segue.destinationViewController;
        detailVC.documentController = self.documentController;
    }
}

@end
