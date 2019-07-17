//
//  HHDocumentsTableViewController.m
//  Documents
//
//  Created by Hayden Hastings on 7/17/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

#import "HHDocumentsTableViewController.h"
#import "HHDetailDocumentViewController.h"
#import "HHDocumentController.h"
#import "HHDocument.h"

@interface HHDocumentsTableViewController ()

@end

@implementation HHDocumentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

@synthesize documentController = _documentController;

- (HHDocumentController *)documentController {
    if (!_documentController) {
        _documentController = [[HHDocumentController alloc] init];
    }
    return _documentController;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documentsArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    HHDocument *documents = self.documentController.documentsArray[indexPath.row];
    
    cell.textLabel.text = documents.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d words", documents.wordCount];
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        HHDocumentController *documents = self.documentController.documentsArray[indexPath.row];
        [self.documentController removeDocument:documents];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"toDocumentVC"]) {
        HHDetailDocumentViewController *destinationVC = segue.destinationViewController;
        
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        
        destinationVC.documentController = self.documentController;
        destinationVC.document = self.documentController.documentsArray[indexPath.row];
        
    } else if ([segue.identifier isEqualToString:@"addDocumentVC"]) {
        HHDetailDocumentViewController *destionationVC = segue.destinationViewController;
        destionationVC.documentController = self.documentController;
    }
}


@end
