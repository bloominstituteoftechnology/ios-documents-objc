//
//  KRCDocumentTableViewController.m
//  Documents
//
//  Created by Christopher Aronson on 7/17/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import "KRCDocumentDetailViewController.h"
#import "KRCDocumentTableViewController.h"
#import "KRCDocumentController.h"
#import "KRCDocument.h"

@interface KRCDocumentTableViewController ()

@end

@implementation KRCDocumentTableViewController


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [[self tableView] reloadData];
}
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (KRCDocumentController *)documentController {
    
    if (!_documentController) {
        _documentController = [[KRCDocumentController alloc] init];
    }
    
    return _documentController;
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self documentController] getCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    KRCDocument *currentCellDocument = [[[self documentController] documents] objectAtIndex:[indexPath row]];
    
    [[cell textLabel] setText:[currentCellDocument documentTitle]];
    [[cell detailTextLabel] setText:[currentCellDocument document]];
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        KRCDocument *selectedDocument = [[[self documentController] documents] objectAtIndex:[indexPath row]];
        [[self documentController] removeDocument:selectedDocument];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"ShowDetailDocument"]) {
        
        NSIndexPath *indexPath = [[self tableView] indexPathForSelectedRow];
        KRCDocument *selectedDocument = [[[self documentController] documents] objectAtIndex:[indexPath row]];
        
        KRCDocumentDetailViewController *detailVC = [segue destinationViewController];
        [detailVC setDocument:selectedDocument];
        [detailVC setDocumentController:[self documentController]];
        [detailVC setIndexPathForDocument:indexPath];
        
    } else if ([[segue identifier] isEqualToString:@"ShowCreateDocument"]) {
        
        KRCDocumentDetailViewController *detailVC = [segue destinationViewController];
        [detailVC setDocumentController:[self documentController]];
    }
}

@end
