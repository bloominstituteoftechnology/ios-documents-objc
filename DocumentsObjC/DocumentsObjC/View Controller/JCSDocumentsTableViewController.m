//
//  JCSDocumentsTableViewController.m
//  DocumentsObjC
//
//  Created by Lambda_School_Loaner_95 on 4/3/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import "JCSDocumentsTableViewController.h"
#import "JCSDocument.h"
#import "JCSDocumentController.h"
#import "JCSDocumentViewController.h"


@interface JCSDocumentsTableViewController ()

@end

@implementation JCSDocumentsTableViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        _documentController = [[JCSDocumentController alloc]init];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _documentController = [[JCSDocumentController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
          
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.documentController.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    JCSDocument *doc = self.documentController.documents[indexPath.row];
    cell.textLabel.text = doc.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d words", doc.wordCount];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
   
    if (editingStyle == UITableViewCellEditingStyleDelete){
        JCSDocument *doc = _documentController.documents[indexPath.row];
        [_documentController removeADocument:doc];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    }
    
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"DocumentDetail"]) {
        JCSDocumentViewController *cellDetailController = [segue destinationViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        if (indexPath) {
            cellDetailController.document = [self.documentController.documents objectAtIndex:indexPath];
        }
        cellDetailController.documentController = self.documentController;
    
    }
    if ([[segue identifier] isEqualToString:@"NewDocument"]) {
        JCSDocumentViewController *cellDetailController = [segue destinationViewController];
        cellDetailController.documentController = self.documentController;
    }
}


@end
