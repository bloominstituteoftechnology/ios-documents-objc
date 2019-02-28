//
//  LMSDocumentsTableViewController.m
//  Documents ObjC
//
//  Created by Lisa Sampson on 2/27/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import "LMSDocumentsTableViewController.h"
#import "LMSDocumentViewController.h"
#import "LMSDocumentController.h"
#import "LMSDocument.h"

// #import "CoreData/CoreData.h"

@interface LMSDocumentsTableViewController () // <NSFetchedResultsControllerDelegate>

@end

@implementation LMSDocumentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self != nil) {
        _documentController = [[LMSDocumentController alloc] init];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self != nil) {
        _documentController = [[LMSDocumentController alloc] init];
    }
    return self;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocCell" forIndexPath:indexPath];
    
    LMSDocument *document = self.documentController.documents[indexPath.row];
    
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = [NSString stringWithFormat: @"%d words", document.wordCount];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        LMSDocument *document = self.documentController.documents[indexPath.row];
        [self.documentController deleteDoc:document];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    LMSDocumentViewController *destinationVC = segue.destinationViewController;
    destinationVC.documentController = self.documentController;
    if ([segue.identifier  isEqualToString: @"EditDocSegue"]) {
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        destinationVC.document = [self.documentController.documents objectAtIndex:indexPath.row];
    }}









//- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller {
//    [self.tableView beginUpdates];
//}
//
//-(void)controllerDidChangeContent:(NSFetchedResultsController *)controller {
//    [self.tableView endUpdates];
//}
//
//-(void)controller:(NSFetchedResultsController *)controller didChangeSection:(id<NSFetchedResultsSectionInfo>)sectionInfo atIndex:(NSUInteger)sectionIndex forChangeType:(NSFetchedResultsChangeType)type {
//
//    switch (type) {
//        case NSFetchedResultsChangeInsert:
//            <#statements#>
//            break;
//        case NSFetchedResultsChangeDelete:
//            <#code#>
//            break;
//        case NSFetchedResultsChangeMove:
//            <#code#>
//            break;
//        case NSFetchedResultsChangeUpdate:
//            <#code#>
//            break;
//    }
//}
//
//-(void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath {
//
//    switch (type) {
//        case NSFetchedResultsChangeInsert:
//            <#statements#>
//            break;
//        case NSFetchedResultsChangeDelete:
//            <#code#>
//            break;
//        case NSFetchedResultsChangeMove:
//            <#code#>
//            break;
//        case NSFetchedResultsChangeUpdate:
//            <#code#>
//            break;
//    }
//
//}

@end
