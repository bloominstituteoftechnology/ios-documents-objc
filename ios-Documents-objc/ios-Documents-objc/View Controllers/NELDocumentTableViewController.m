//
//  NELDocumentTableViewController.m
//  ios-Documents-objc
//
//  Created by Nelson Gonzalez on 3/27/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

#import "NELDocumentTableViewController.h"
#import "NELDocumentController.h"
#import "NELDocument.h"
#import "NELAddDocumentViewController.h"

@interface NELDocumentTableViewController ()

@end


@implementation NELDocumentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear: YES];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.documentController.documentsArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"documentCell" forIndexPath:indexPath];
    
    NELDocument *documents = self.documentController.documentsArray[indexPath.row];
    
    cell.textLabel.text = documents.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d words", documents.wordCount];
    
    return cell;
}





// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}



#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"fromCell"]) {
        //Passing the task and task controller
        NELAddDocumentViewController *destinationVC = segue.destinationViewController;
        
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        
        destinationVC.documentController = self.documentController;
        destinationVC.documents = self.documentController.documentsArray[indexPath.row];
    } else if ([segue.identifier isEqualToString:@"fromBarButton"]) {
        
        NELAddDocumentViewController *destinationVC = segue.destinationViewController;
        destinationVC.documentController = self.documentController;
    }
}


@synthesize documentController = _documentController;

//the getter for taskController
- (NELDocumentController *)documentController
{
    if (!_documentController) {
        _documentController = [[NELDocumentController alloc] init];
    }
    return _documentController;
}



@end
