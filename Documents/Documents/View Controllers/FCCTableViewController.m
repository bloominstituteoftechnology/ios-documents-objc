//
//  FCCTableViewController.m
//  Documents
//
//  Created by Lambda_School_Loaner_34 on 4/3/19.
//  Copyright © 2019 Frulwinn. All rights reserved.
//

#import "FCCTableViewController.h"
#import "FCCDocumentsController.h"
#import "FCCDocuments.h"
#import "FCCDetailViewController.h"

@interface FCCTableViewController ()

@end

@implementation FCCTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.documentController.documents count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    FCCDocuments *document = self.documentController.documents[indexPath.row];
    
    //cell logic
   
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        FCCDocuments *document = self.documentController.documents[indexPath.row];
        
        [self.documentController removeDoc:document];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"documentsSegue"]) {
        
        // Passing the task and task controller (tapped on a task cell)
        FCCDetailViewController *destination = segue.destinationViewController;
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        
        destination.documentsController = self.documentsController;
        destination.documents = self.documentsController.documents[indexPath.row];
    } else if ([segue.identifier isEqualToString:@"addSegue"]) {
        
        FCCDetailViewController *destination = segue.destinationViewController;
        
        destination.documentsController = self.documentsController;
    }
}

// MARK: - Properties
@synthesize documentController = _documentsController;

- (FCCDocumentsController *)documentController
{
    if (!_documentsController) {
        _documentsController = [[FCCDocumentsController alloc] init];
    }
    return _documentsController;
}

@end
