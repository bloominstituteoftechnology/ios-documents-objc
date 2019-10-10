//
//  MJRDocumentsTableViewController.m
//  Documents-ObjectiveC
//
//  Created by Marlon Raskin on 10/9/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRDocumentsTableViewController.h"
#import "MJRDocumentDetailViewController.h"
#import "MJRDocumentController.h"
#import "NSString+MJRWordCount.h"
#import "MJRDocument.h"

@interface MJRDocumentsTableViewController ()

@end

@implementation MJRDocumentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.tableFooterView = [UIView new];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (MJRDocumentController *)controller {
    if (_controller) {
        return _controller;
    } else {
        _controller = [[MJRDocumentController alloc] init];
        return _controller;
    }
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.controller count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocCell" forIndexPath:indexPath];

    MJRDocument *document = [self.controller documentAtIndex:indexPath.row];
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Word count: %lu", [document.text wordCount]];
    return cell;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        MJRDocument *document = [self.controller documentAtIndex:indexPath.row];
        [self.controller deleteDocument:document];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {

    }
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowDetailSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        MJRDocumentDetailViewController *detailVC = segue.destinationViewController;
        detailVC.controller = self.controller;
        detailVC.document = [self.controller documentAtIndex:indexPath.row];
    }

    if ([segue.identifier isEqualToString:@"NewDocSegue"]) {
        MJRDocumentDetailViewController *detailVC = segue.destinationViewController;
        detailVC.controller = self.controller;
    }
}

@end
