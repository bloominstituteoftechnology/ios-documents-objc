//
//  JLRDocumentsTableViewController.m
//  Documents
//
//  Created by Jesse Ruiz on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "JLRDocumentsTableViewController.h"
#import "JLRDocumentController.h"
#import "JLRDocument.h"
#import "JLRDetailViewController.h"

@interface JLRDocumentsTableViewController ()

@property (nonatomic) JLRDocumentController *documentController;
@property (nonatomic, copy, readonly) NSArray *document;

@end

@implementation JLRDocumentsTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
    if (self = [super initWithCoder:coder]) {
        _documentController = [[JLRDocumentController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    JLRDocument *document = self.document[indexPath.row];
    
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = document.wordCount;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        JLRDocument *document = self.documentController.documents[indexPath.row];
        [self.documentController deleteDoc:document];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation
// TODO: FINISH SEGUES

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"addDetail"]) {
        JLRDetailViewController *addVC = segue.destinationViewController;
        
    } else if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        JLRDetailViewController *showVC = segue.destinationViewController;
        
    }
}


@end
