//
//  DRMDocumentsTableViewController.m
//  Documents-Objc
//
//  Created by Dillon McElhinney on 2/27/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import "DRMDocumentsTableViewController.h"

@interface DRMDocumentsTableViewController ()

@property DRMDocumentModelController *documentController;

@end


@implementation DRMDocumentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setDocumentController:[[DRMDocumentModelController alloc] init]];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    DRMDocument *document = self.documentController.documents[indexPath.row];
    
    [cell.textLabel setText: document.title];
    [cell.detailTextLabel setText: [NSString stringWithFormat: @"%d words", document.wordCount]];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        DRMDocument *document = self.documentController.documents[indexPath.row];
        if (document) {
            [self.documentController deleteDocument: document];
            [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        }
    }
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier  isEqual: @"AddDocumentSegue"]){
        DRMDocumentDetailViewController *destinationVC = segue.destinationViewController;
        
        [destinationVC setDocumentController: _documentController];
    } else if ([segue.identifier  isEqual: @"ShowDocumentSegue"]) {
        DRMDocumentDetailViewController *destinationVC = segue.destinationViewController;
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        DRMDocument *document = self.documentController.documents[indexPath.row];
        
        [destinationVC setDocumentController: _documentController];
        [destinationVC setDocument: document];
    }
}


@end
