//
//  LTBDocumentsTableViewController.m
//  Documents
//
//  Created by Linh Bouniol on 10/3/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import "LTBDocumentsTableViewController.h"
#import "LTBDocumentViewController.h"
#import "LTBDocumentController.h"
#import "LTBDocument.h"

@interface LTBDocumentsTableViewController ()

@end

@implementation LTBDocumentsTableViewController

- (instancetype)initWithNibName:(nullable NSString *)nibNameOrNil bundle:(nullable NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _documentController = [[LTBDocumentController alloc] init];
    }
    return self;
}

- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _documentController = [[LTBDocumentController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // Want it here, b/c as the table view comes in and out of view, it will reload
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    LTBDocument *document = [self.documentController.documents objectAtIndex:indexPath.row];
    
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = document.text;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        LTBDocument *document = [self.documentController.documents objectAtIndex:indexPath.row];
        [self.documentController deleteDocument:document];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // cast
    LTBDocumentViewController *detailVC = [segue destinationViewController];
    
    // checking the cast
    if ([detailVC isKindOfClass:[LTBDocumentViewController class]]) {
        detailVC.documentController = self.documentController;
        
        if ([segue.identifier isEqualToString:@"ShowDocumentDetail"]) {
            // Look at the type of the last property in the chain to know what the type of the variable should be
            NSInteger index = self.tableView.indexPathForSelectedRow.row;
            detailVC.document = self.documentController.documents[index];
        }
    }
}
@end
