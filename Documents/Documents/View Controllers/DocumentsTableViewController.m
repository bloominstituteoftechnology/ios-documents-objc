//
//  DocumentsTableViewController.m
//  Documents
//
//  Created by Madison Waters on 2/27/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import "DocumentsTableViewController.h"
#import "DetailViewController.h"
#import "DocumentController.h"
#import "Document.h"

@interface DocumentsTableViewController ()

@property (nonatomic, readonly) DocumentController *documentController;

@end

@implementation DocumentsTableViewController

#pragma mark - Properties

@synthesize documentController = _documentController;
- (DocumentController *)documentController {
    if (_documentController == nil) {
        _documentController = [[DocumentController alloc] init];
    }
    return _documentController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}

//DocCell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocCell" forIndexPath:indexPath];
    
    Document *document = self.documentController.documents[indexPath.row];
    
    cell.textLabel.text = document.text;
    
    NSString *wordCountString = [@(document.wordCount) stringValue];
    cell.detailTextLabel.text = wordCountString;
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation
//addDocument //documentDetail

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
