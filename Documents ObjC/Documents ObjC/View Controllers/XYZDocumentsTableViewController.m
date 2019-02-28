//
//  XYZDocumentsTableViewController.m
//  Documents ObjC
//
//  Created by Iyin Raphael on 2/27/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import "XYZDocumentsTableViewController.h"
#import "XYZDocController.h"
#import "XYZDocument.h"
#import "XYZDocumentsViewController.h"

@interface XYZDocumentsTableViewController ()

@property XYZDocController *docController;

@end

@implementation XYZDocumentsTableViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        _docController = [[XYZDocController alloc] init];
    }
    return self;
}


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self) {
        _docController = [[XYZDocController alloc] init];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return _docController.documents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"docCell" forIndexPath:indexPath];
    XYZDocument *doc = _docController.documents[indexPath.row];
    cell.textLabel.text = doc.DocTitle;
    cell.detailTextLabel.text = doc.DocDetails;
    return cell;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier  isEqual: @"addSegue"]) {
        XYZDocumentsViewController *detailVc = segue.destinationViewController;
        detailVc.docController = _docController;
    }else if ( [segue.identifier isEqual:@"showSegue"]) {
        XYZDocumentsViewController *detailVC = segue.destinationViewController;
        NSIndexPath *index = [self.tableView indexPathForSelectedRow];
        XYZDocument *doc = _docController.documents[index.row];
        detailVC.doc = doc;
    }
    
}
 
- (IBAction)addDoc:(id)sender {
}
@end
