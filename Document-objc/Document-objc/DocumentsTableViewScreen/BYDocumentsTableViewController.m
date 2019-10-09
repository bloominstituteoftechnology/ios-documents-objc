//
//  BYDocumentsTableViewController.m
//  Document-objc
//
//  Created by Bradley Yin on 10/9/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "BYDocumentsTableViewController.h"
#import "BYDocumentController.h"
#import "BYDocument.h"
#import "BYDocumentDetailViewController.h"

@interface BYDocumentsTableViewController ()

@end

@implementation BYDocumentsTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        _documentController = [[BYDocumentController alloc] init];
    }
    return self;
}


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
    
    BYDocument *document = self.documentController.documents[indexPath.row];
    
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", document.wordCount];
    
    return cell;
}


// MARK: - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
// ShowTaskDetail = show an existing
// ShowCreateTask = create brand new task and add it
    if ([segue.identifier isEqualToString:@"DocumentDetailShowSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        BYDocumentDetailViewController *detailVC = segue.destinationViewController;
        detailVC.documentController = self.documentController;
        detailVC.document = self.documentController.documents[indexPath.row];
    }

    if ([segue.identifier isEqualToString:@"AddDocumentShowSegue"]) {
        BYDocumentDetailViewController *detailVC = segue.destinationViewController;
        detailVC.documentController = self.documentController;
    }
}

@end
