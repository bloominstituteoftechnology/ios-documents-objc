//
//  DocumentTableViewController.m
//  ObjC Documents
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPDocumentTableViewController.h"
#import "REPDocumentController.h"
#import "REPDocument+CoreDataClass.h"
#import "REPDocument+Convenience.h"
#import "REPDocumentDetailViewController.h"
#import "REPCoreDataStack.h"

@interface REPDocumentTableViewController ()

@property REPDocumentController* documentController;
@property (nonatomic) NSFetchedResultsController* fetchedResultsController;

@end

@implementation REPDocumentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

	_documentController = [[REPDocumentController alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	[self.tableView reloadData];
}

// MARK: FRC

- (NSFetchedResultsController *)fetchedResultsController {
	if (_fetchedResultsController == nil) {
		NSFetchRequest* fetchRequest = [REPDocument fetchRequest];
		fetchRequest.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"title" ascending:true]];

		NSManagedObjectContext* moc = [REPCoreDataStack sharedInstance].mainContext;

		_fetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:moc sectionNameKeyPath:nil cacheName:nil];

		_fetchedResultsController.delegate = self;

		NSError* error;
		[_fetchedResultsController performFetch:&error];
		if (error) {
			NSLog(@"error performing initial fetch for frc: %@", error);
			exit(1);
		}
	}
	return _fetchedResultsController;
}

// MARK: - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return self.documentController.documents.count;
	return self.fetchedResultsController.sections[section].numberOfObjects;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];

    // Configure the cell...
	REPDocument* document = [self.fetchedResultsController objectAtIndexPath:indexPath];
	cell.textLabel.text = document.title;
	cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu words", document.wordCount];

    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([segue.identifier isEqualToString:@"AddDocumentSegue"]) {
		REPDocumentDetailViewController* detailVC = segue.destinationViewController;
		detailVC.documentController = self.documentController;
	}
	if ([segue.identifier isEqualToString:@"ShowDocumentSegue"]) {
		REPDocumentDetailViewController* detailVC = segue.destinationViewController;
		detailVC.documentController = self.documentController;

		NSIndexPath* indexPath = [self.tableView indexPathForSelectedRow];
		REPDocument* document = [self.fetchedResultsController objectAtIndexPath:indexPath];

		detailVC.document = document;
	}
}

// MARK: - Fetched Results Controller Delegate
- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller {
	[self.tableView beginUpdates];
}

- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller {
	[self.tableView endUpdates];
}

- (void)controller:(NSFetchedResultsController *)controller didChangeSection:(id<NSFetchedResultsSectionInfo>)sectionInfo atIndex:(NSUInteger)sectionIndex forChangeType:(NSFetchedResultsChangeType)type {
	NSIndexSet* indexSet = [NSIndexSet indexSetWithIndex:sectionIndex];
	switch (type) {
		case NSFetchedResultsChangeInsert:
			[self.tableView insertSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
			break;

		case NSFetchedResultsChangeDelete:
			[self.tableView deleteSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
			break;

		default:
			NSLog(@"unexpected NSFetchedResultsChangeType");
			break;
	}
}

- (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath {
	switch (type) {
		case NSFetchedResultsChangeInsert:
			[self.tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
			break;
		case NSFetchedResultsChangeMove:
			[self.tableView moveRowAtIndexPath:indexPath toIndexPath:newIndexPath];
			break;
		case NSFetchedResultsChangeUpdate:
			[self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
			break;
		case NSFetchedResultsChangeDelete:
			[self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
			break;
		default:
			NSLog(@"unexpected NSFetchedResultsChangeType");
			break;
	}
}

- (NSString *)controller:(NSFetchedResultsController *)controller sectionIndexTitleForSectionName:(NSString *)sectionName {
	return nil;
}

@end
