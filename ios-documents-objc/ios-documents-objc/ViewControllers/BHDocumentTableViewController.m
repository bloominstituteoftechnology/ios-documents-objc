//
//  BHDocumentTableViewController.m
//  ios-documents-objc
//
//  Created by Benjamin Hakes on 2/27/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

#import "BHDocumentTableViewController.h"
#import "BHDocumentDetailViewController.h"
#import "BHDocumentsTableViewCell.h"
#import "BHDocument.h"

@interface BHDocumentTableViewController ()

@property BHModelController *modelController;

@end

@implementation BHDocumentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.allowsMultipleSelectionDuringEditing = NO;
    _modelController = [[BHModelController alloc] init];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _modelController.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BHDocumentsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"DocumentCell" forIndexPath:indexPath];
    BHDocument *document = [_modelController.documents objectAtIndex: indexPath.row];
    
    cell.textLabel.text = [document title];
    NSString *wordCountString = [NSString stringWithFormat:@"%i", [document wordCount]];
    
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ words", wordCountString];
    // Configure the cell...
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return YES - we will be able to delete all rows
    return YES;
}
// Override to support editing the table view.

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //add code here for when you hit delete
        // Delete the row from the data source
        [_modelController.documents removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    BHDocumentDetailViewController *destVC = [segue destinationViewController];
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    if([segue.identifier  isEqual: @"AddNewDocumentSegue"]){
        // do something
        destVC.modelController = _modelController;
        BHDocument *newDocument = [[BHDocument alloc] init];
        destVC.document = newDocument;
        
    } else if ([segue.identifier  isEqual: @"ViewExistingDocumentSegue"]){
        // do something else
        destVC.modelController = _modelController;
        destVC.document = [_modelController.documents objectAtIndex:indexPath.row];
        
    } else {
        // do something else
    }
    
}

- (IBAction)addNewDocumentButtonClicked:(id)sender {
}
@end
