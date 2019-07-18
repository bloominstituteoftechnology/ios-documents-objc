//
//  SLRDocumentsTableViewController.m
//  DocumentsObjC
//
//  Created by Sameera Roussi on 7/17/19.
//  Copyright © 2019 Sameera Roussi. All rights reserved.
//

#import "SLRDocumentsTableViewController.h"
#import "SLRDetailViewController.h"
#import "SLRDocumentController.h"
#import "SLRDocument.h"
#import "NSString+WordCount.h"

@interface SLRDocumentsTableViewController ()

@end

@implementation SLRDocumentsTableViewController

#pragma mark - View states
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

// Initialize the document controller
-(SLRDocumentController *)documentController {
    // Make sure this is the first time initializing the controller
    if(!_documentController) {
        // There are no documents, this is the first implementation
        _documentController = [[SLRDocumentController alloc] init];
    }
    // The Document Controller is initialized
    return _documentController;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.countOfDocuments;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentListCell" forIndexPath:indexPath];
    
    // Get the data
    SLRDocument *document = self.documentController.documents[indexPath.row];
    
    // Display the documentName and documentWords in the tableView cell
    cell.textLabel.text = document.documentName;
    cell.detailTextLabel.text =  [document.documentWords slr_wordCount];
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        SLRDocument *document = self.documentController.documents[indexPath.row];
        [self.documentController removeDocument:document];
        // Now clear the row
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}



#pragma mark - Navigation
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Show detail for exsisting document
    if([segue.identifier isEqualToString:@"SegueWithDocument"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        SLRDocument *document = self.documentController.documents[indexPath.row];
        
        // Cast the destination segue controller to the custom controller type
        SLRDetailViewController *detailVC = segue.destinationViewController;
        detailVC.documentController = self.documentController;
        detailVC.document = document;
        
    } else {
        SLRDetailViewController *detailVC = segue.destinationViewController;
        detailVC.documentController = self.documentController;
    }
}


@end
