//
//  DocumentsTableViewController.m
//  Documents
//
//  Created by Michael Stoffer on 11/5/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

#import "DocumentsTableViewController.h"
#import "DocumentDetailViewController.h"
#import "DocumentController.h"
#import "Document.h"

#import "NSString+WordCount.h"

@interface DocumentsTableViewController ()

@property (nonatomic, readonly) DocumentController *documentController;

@end

@implementation DocumentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    Document *document = [self.documentController.documents objectAtIndex:indexPath.row];
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%ld words", (long)document.text.wordCount];
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Document *document = [self.documentController.documents objectAtIndex:indexPath.row];
        [self.documentController removeDocument:document];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"EditDocument"]) {
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        DocumentDetailViewController *detailVC = segue.destinationViewController;
        
        detailVC.documentController = self.documentController;
        detailVC.document = [self.documentController.documents objectAtIndex:indexPath.row];
    } else if ([segue.identifier isEqualToString:@"AddDocument"]) {
        DocumentDetailViewController *detailVC = segue.destinationViewController;
        detailVC.documentController = self.documentController;
    }
}

@synthesize documentController = _documentController;
- (DocumentController *)documentController
{
    if (!_documentController) {
        _documentController = [[DocumentController alloc] init];
    }
    return _documentController;
}

@end
