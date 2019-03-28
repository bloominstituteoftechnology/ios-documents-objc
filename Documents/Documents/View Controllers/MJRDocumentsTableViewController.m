//
//  MJRDocumentsTableViewController.m
//  Documents
//
//  Created by Moses Robinson on 3/27/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

#import "MJRDocumentsTableViewController.h"
#import "MJRDocumentController.h"
#import "MJRDocument.h"
#import "MJRDocumentDetailViewController.h"

@interface MJRDocumentsTableViewController ()

@end

@implementation MJRDocumentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.documentController.documents count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    MJRDocument *document = self.documentController.documents[indexPath.row];
    
    cell.textLabel.text = document.title;
    NSString *wordCountString = [NSString stringWithFormat:@"%lu words", (unsigned long)document.wordCount];
    cell.detailTextLabel.text = wordCountString;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        MJRDocument *document = self.documentController.documents[indexPath.row];
        
        [self.documentController removeDoc:document];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   
    if ([segue.identifier isEqualToString:@"ShowDetail"]) {
        
        // Passing the task and task controller (tapped on a task cell)
        
        MJRDocumentDetailViewController *destination = segue.destinationViewController;
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        
        destination.documentController = self.documentController;
        destination.document = self.documentController.documents[indexPath.row];
    } else if ([segue.identifier isEqualToString:@"ShowCreate"]) {
        
        MJRDocumentDetailViewController *destination = segue.destinationViewController;
        
        destination.documentController = self.documentController;
    }
}

// MARK: - Properties

@synthesize documentController = _documentController;

- (MJRDocumentController *)documentController
{
    if (!_documentController) {
        _documentController = [[MJRDocumentController alloc] init];
    }
    return _documentController;
}

@end
