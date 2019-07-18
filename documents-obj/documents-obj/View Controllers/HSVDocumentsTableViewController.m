//
//  HSVDocumentsTableViewController.m
//  documents-obj
//
//  Created by Hector Steven on 7/17/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import "HSVDocumentsTableViewController.h"
#import "../Model Controller /HSVDocumentController.h"
#import "../Models/HSVDocument.h"
#import "HSVNewDocumentViewController.h"

@interface HSVDocumentsTableViewController ()

@end

@implementation HSVDocumentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	[self.tableView reloadData];
}

- (HSVDocumentController *)documentcontroller {
	if(!_documentcontroller)
		_documentcontroller = [[HSVDocumentController alloc] init];

	return _documentcontroller;
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentcontroller.countOfDocuments;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
	HSVDocument *doc = self.documentcontroller.documents[indexPath.row];
	
	cell.textLabel.text = doc.title;
	cell.detailTextLabel.text = doc.body;
    
    return cell;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
	
		HSVDocument *doc = self.documentcontroller.documents[indexPath.row];
		[self.documentcontroller deleteDocument:doc];
		
		[tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
	}
}




- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	
	if([segue.identifier isEqualToString:@"AddSegue"]) {
		
		HSVNewDocumentViewController *newDocVC = segue.destinationViewController;
		newDocVC.documentController = self.documentcontroller;
		
	} else if([segue.identifier isEqualToString:@"CellSegue"]){
		
		NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
		HSVDocument *doc = self.documentcontroller.documents[indexPath.row];
		
		HSVNewDocumentViewController *newDocVC = segue.destinationViewController;
		newDocVC.document = doc;
		newDocVC.documentController = self.documentcontroller;
		
	}
}


@end
