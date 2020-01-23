//
//  SKSDocumentsTableViewController.m
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSDocumentsTableViewController.h"
#import "SKSDocumentController.h"
#import "SKSDocument.h"
#import "SKSDetailDocumentViewController.h"
#import "Document+CoreDataClass.h"
#import "SKSCoreDataStack.h"

@interface SKSDocumentsTableViewController () {
    NSFetchedResultsController *_fetchedResultController;
}

- (NSFetchedResultsController *)createFetchResultController;

@end

@implementation SKSDocumentsTableViewController

static NSString * const reuseIdentifier = @"DocumentCell";

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _documentController = [[SKSDocumentController alloc] init];
        _fetchedResultController = [self createFetchResultController];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    [self.tableView reloadData];
//}

- (NSFetchedResultsController *)createFetchResultController {
    NSManagedObjectContext *context = [[SKSCoreDataStack shared] mainContext];
    NSFetchRequest<Document *> *fetchRequest = [Document fetchRequest];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"title" ascending:YES];
    NSArray *sortDescriptors = [[NSArray alloc] initWithObjects:sortDescriptor, nil];
    [fetchRequest setSortDescriptors:sortDescriptors];
    NSFetchedResultsController *controller = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:context sectionNameKeyPath:nil cacheName:nil];

    [controller setDelegate:self];
    if (![controller performFetch:NULL]) {
        NSLog(@"Error Fetching");
    }
    return controller;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _fetchedResultController.sections[section].numberOfObjects;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];

    //SKSDocument *document = self.documentController.documents[indexPath.row];
    Document *document = _fetchedResultController.fetchedObjects[indexPath.row];

    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d words", document.wordCount];
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //SKSDocument *document = self.documentController.documents[indexPath.row];
        Document *document = _fetchedResultController.fetchedObjects[indexPath.row];
        //[tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [self.documentController deleteDocument:document];
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    SKSDetailDocumentViewController *destinationVC = [segue destinationViewController];
    if ([destinationVC isKindOfClass:[SKSDetailDocumentViewController class]]) {

        destinationVC.documentController = self.documentController;

        if ([[segue identifier] isEqualToString:@"ShowDetailDocumentSegue"]) {
            NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
            destinationVC.document = _fetchedResultController.fetchedObjects[indexPath.row];
        }
    }
}

#pragma mark - NSFetchedResultsControllerDelegate

- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller {
    [self.tableView beginUpdates];
}

- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller {
    [self.tableView endUpdates];
}

- (void)controller:(NSFetchedResultsController *)controller didChangeSection:(id<NSFetchedResultsSectionInfo>)sectionInfo atIndex:(NSUInteger)sectionIndex forChangeType:(NSFetchedResultsChangeType)type {
    switch (type) {
        case NSFetchedResultsChangeInsert:
            [self.tableView insertSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationAutomatic];
        case NSFetchedResultsChangeDelete:
            [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationAutomatic];
        default:
            break;
    }
}

- (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath {
    switch (type) {
        case NSFetchedResultsChangeInsert:
            if (newIndexPath) {
                [self.tableView insertRowsAtIndexPaths: [NSArray arrayWithObject:newIndexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
            }
        case NSFetchedResultsChangeUpdate:
            if (indexPath) {
                [self.tableView reloadRowsAtIndexPaths: [NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
            }
        case NSFetchedResultsChangeMove:
            if (indexPath && newIndexPath) {
                [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
                [self.tableView insertRowsAtIndexPaths: [NSArray arrayWithObject:newIndexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
            }
        case NSFetchedResultsChangeDelete:
            if (indexPath) {
                [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
            }
        default:
            break;
    }
}

@end
