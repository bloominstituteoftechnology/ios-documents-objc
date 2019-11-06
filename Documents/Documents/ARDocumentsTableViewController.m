//
//  LSIDocumentsTableViewController.m
//  Documents
//
//  Created by Alex Rhodes on 11/6/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

#import "ARDocumentsTableViewController.h"
#import "ARDocumentViewController.h"

@interface ARDocumentsTableViewController ()

@end

@implementation ARDocumentsTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _controller = [[ARDocumentController alloc] init];
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
    return self.controller.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    ARDocument *document = self.controller.documents[indexPath.row];
    
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text =     [NSString stringWithFormat:@"%lu words!", (unsigned long) document.wordCount];
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        ARDocument *document = self.controller.documents[indexPath.row];
        
        [self.controller deleteDocument:document];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier]  isEqualToString:@"AddDocumentSegue"]) {
        ARDocumentViewController *destination = [segue destinationViewController];
        destination.controller = self.controller;
        
    } else if ([[segue identifier]  isEqual: @"DocumentDetailSegue"]) {
        ARDocumentViewController *destination = [segue destinationViewController];
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        destination.controller = self.controller;
        destination.document = self.controller.documents[indexPath.row];
    }
}


@end
