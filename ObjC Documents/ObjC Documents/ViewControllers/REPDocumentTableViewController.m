//
//  DocumentTableViewController.m
//  ObjC Documents
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPDocumentTableViewController.h"
#import "REPDocumentController.h"
#import "REPDocument.h"
#import "REPDocumentDetailViewController.h"

@interface REPDocumentTableViewController ()

@property REPDocumentController* documentController;

@end

@implementation REPDocumentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

	_documentController = [[REPDocumentController alloc] init];
}

// MARK: - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];

    // Configure the cell...
	REPDocument* document = self.documentController.documents[indexPath.row];
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
		REPDocument* document = self.documentController.documents[indexPath.row];

		detailVC.document = document;
	}


}



@end
