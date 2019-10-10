//
//  JSDocumentsTableVC.m
//  Documents-C
//
//  Created by Jeffrey Santana on 10/9/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import "JSDocumentsTableVC.h"
#import "JSDocumentDetailsVC.h"
#import "AppDelegate.h"
#import <CoreData/CoreData.h>

@interface JSDocumentsTableVC ()

@end

@implementation JSDocumentsTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
	
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    // Fetch the devices from persistent data store
    NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Document"];
    self.documents = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
    
    [self.tableView reloadData];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([segue.destinationViewController isKindOfClass:JSDocumentDetailsVC.self]) {
		NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
		
		if (indexPath) {
			JSDocumentDetailsVC * docDetailsVC = segue.destinationViewController;
			docDetailsVC.document = [self.documents objectAtIndex:indexPath.row];
		}
	}
}

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
	id delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
	if( [delegate performSelector:@selector(persistentContainer)] ){
		context = [[delegate persistentContainer] viewContext];
	}
	return context;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return self.documents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
	NSManagedObject *doc = [self.documents objectAtIndex:indexPath.row];
	
	cell.textLabel.text = [doc valueForKey:@"title"];
	cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ words", [doc valueForKey:@"wordCount"]];
    
    return cell;
}

@end
