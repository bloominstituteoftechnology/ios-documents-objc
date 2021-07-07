//
//  DocumentsTableViewController.m
//  Documents Obj-C
//
//  Created by Ivan Caldwell on 2/28/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//

#import "DocumentsTableViewController.h"
#import "DocumentDetailViewController.h"
#import "DocumentController.h"

@interface DocumentsTableViewController ()
// Add a property with property attributes for an instance of your model controller in the table view controller subclass
// Question: I don't know what property attributes I'm supposed to add.
@property DocumentController *documentController;

@end

@implementation DocumentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setDocumentController:[[DocumentController alloc] init]];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return self.documentController.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    Document *document = self.documentController.documents[indexPath.row];
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = [NSString stringWithFormat: @"%d words", document.wordCount];
    
    //wrong....wrong...wrong. I despies braket syntax...
    //cell.detailTextLabel.text = document.wordCount;
    //cell.detailTextLabel.text.stringByAppendingString:@" words";
    return cell;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        Document *document = self.documentController.documents[indexPath.row];
        [self.documentController deleteDocument: document];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier  isEqual: @"AddDocument"]){
        DocumentDetailViewController *destinationVC = segue.destinationViewController;
        
        [destinationVC setDocumentController: _documentController];
    } else if ([segue.identifier  isEqual: @"ShowDocument"]) {
        DocumentDetailViewController *destinationVC = segue.destinationViewController;
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        Document *document = self.documentController.documents[indexPath.row];
        
        [destinationVC setDocumentController: _documentController];
        [destinationVC setDocument: document];
    }
}


@end
