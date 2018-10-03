//
//  DocumentsTableViewController.m
//  Documents
//
//  Created by Carolyn Lea on 10/3/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

#import "DocumentsTableViewController.h"
#import "CLSDocumentController.h"
#import "DocumentsDetailViewController.h"

@interface DocumentsTableViewController ()

@end

@implementation DocumentsTableViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self)
    {
        _document = [[CLSDocument alloc] init];
        _documentController = [[CLSDocumentController alloc] init];
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if(self)
    {
        _documentController = [[CLSDocumentController alloc] init];
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _documentController.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentListCell" forIndexPath:indexPath];
    
    _document = _documentController.documents[indexPath.row];
    cell.textLabel.text = _document.documentTitle;
    cell.detailTextLabel.text = _document.documentText;
    
    return cell;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

 //ShowAddView
 //ShowEditView
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DocumentsDetailViewController *detailController = segue.destinationViewController;
    
    if ([[segue identifier] isEqualToString:@"ShowAddView"])
    {
        detailController.documentController = _documentController;
    }
    else if ([[segue identifier] isEqualToString:@"ShowEditView"])
    {
        detailController.documentController = _documentController;
        NSIndexPath *selectedIndexPath = self.tableView.indexPathForSelectedRow;
        detailController.document = self.documentController.documents[selectedIndexPath.row];
    }
    
}


@end
