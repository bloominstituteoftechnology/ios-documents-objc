//
//  LSIDocumentsTableViewController.m
//  ios-documents-objc
//
//  Created by Lambda_School_Loaner_214 on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "LSIDocumentsTableViewController.h"
#import "LSIDocumentController.h"
#import "LSIDetailViewController.h"

@interface LSIDocumentsTableViewController ()

@end

@implementation LSIDocumentsTableViewController


- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _controller = [[LSIDocumentController alloc] init];
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
    LSIDocument *document = self.controller.documents[indexPath.row];
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu words", (unsigned long) document.wordCount];
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        LSIDocument *document = self.controller.documents[indexPath.row];
        [self.controller deleteDoc:document];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AddDocument"]) {
        LSIDetailViewController *vc = segue.destinationViewController;
        vc.controller = self.controller;
    }else if ([segue.identifier isEqualToString:@"EditDocument"]) {
        LSIDetailViewController *vc = segue.destinationViewController;
        vc.controller = self.controller;
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        vc.document = self.controller.documents[indexPath.row];
    }
}
@end
