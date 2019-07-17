//
//  MGBDocumentsTableViewController.m
//  Documents
//
//  Created by Mitchell Budge on 7/17/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "MGBDocumentsTableViewController.h"

@interface MGBDocumentsTableViewController ()

@end

@implementation MGBDocumentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _documentController = [[MGBDocumentController alloc]init];
    }
    return self;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    MGBDocument *document = [[[self documentController] documents] objectAtIndex:[indexPath row]];
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = document.text;
    return cell;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        MGBDocument *document = [[[self documentController] documents] objectAtIndex:[indexPath row]];
        [self.documentController deleteDocument: document];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"SeeDocument"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        MGBDocument *document = self.documentController.documents[indexPath.row];
        MGBDocumentDetailViewController *detailVC = segue.destinationViewController;
        detailVC.documentController = self.documentController;
        detailVC.document = document;
    }
    else if ([[segue identifier] isEqualToString:@"AddDocument"])
    {
        MGBDocumentDetailViewController *detailVC = segue.destinationViewController;
        detailVC.documentController = self.documentController;
    }
}

@end
