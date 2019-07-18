//
//  DLJDocumentTableViewController.m
//  DocumentsApp
//
//  Created by Diante Lewis-Jolley on 7/17/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

#import "DLJDocumentTableViewController.h"
#import "DLJDocumentController.h"
#import "DLJDocument.h"
#import "DetailViewController.h"

@interface DLJDocumentTableViewController ()

@property (nonatomic) DLJDocumentController *docController;


@end

@implementation DLJDocumentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    [self.tableView reloadData];
}

#pragma mark - Table view data source
- (DLJDocumentController *)docController {
    if (!_docController == nil) {

        _docController = [[DLJDocumentController alloc] init];
    }

    return _docController;

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return self.docController.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];

    DLJDocument *document = self.docController.documents[indexPath.row];
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%ld words", document.wordCount];
    
    // Configure the cell...
    
    return cell;
}




#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.

    if ([segue.identifier isEqualToString:@"CellSegue"]) {

        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailViewController *DetailVC = segue.destinationViewController;

        DetailVC.docController = self.docController;
        DetailVC.document = self.docController.documents[indexPath.row];
    } else {

        if ([segue.identifier isEqualToString:@"AddSegue"]) {
            DetailViewController *DetailVC = segue.destinationViewController;
            DetailVC.docController = self.docController;
        }
    }
}


@end
