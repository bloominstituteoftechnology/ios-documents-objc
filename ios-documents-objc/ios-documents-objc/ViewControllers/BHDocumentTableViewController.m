//
//  BHDocumentTableViewController.m
//  ios-documents-objc
//
//  Created by Benjamin Hakes on 2/27/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

#import "BHDocumentTableViewController.h"
#import "BHDocumentsTableViewCell.h"
#import "BHDocument.h"

@interface BHDocumentTableViewController ()

@end

@implementation BHDocumentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BHDocumentsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"DocumentCell" forIndexPath:indexPath];
    
    // cell.textLabel.text = [document title]
    // cell.detailTextLabel.text = [document wordCount
    // Configure the cell...
    
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if(segue.identifier == @"AddNewDocumentSegue"){
        // do something
    } else if (segue.identifier == @"DocumentCell"){
        // do something else
    } else {
        // do something else
    }
    
}

- (IBAction)addNewDocumentButtonClicked:(id)sender {
}
@end
