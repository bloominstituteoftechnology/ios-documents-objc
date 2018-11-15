//
//  IIDocumentsTableViewController.m
//  Documents Objc
//
//  Created by Ilgar Ilyasov on 11/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "IIDocumentsTableViewController.h"
#import "IIDocumentController.h"
#import "IIDocument.h"
#import "IIDocumentDetailViewController.h"

@interface IIDocumentsTableViewController ()

@end

@implementation IIDocumentsTableViewController

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        _documentController = [[IIDocumentController alloc] init];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _documentController = [[IIDocumentController alloc] init];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _documentController = [[IIDocumentController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[self tableView] reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _documentController.documents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    IIDocument *document = [[_documentController documents] objectAtIndex:[indexPath row]];
    [[cell textLabel] setText:[document documentTitle]];
    
    NSString *wordCountString = [NSString stringWithFormat:@"%d", document.wordCount];
    [[cell detailTextLabel] setText:wordCountString];
    
    return cell;
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"AddDocumentSegue"])
    {
        IIDocumentDetailViewController *destVC = [segue destinationViewController];
        destVC.documentController = _documentController;
        
    } else if ([[segue identifier] isEqualToString:@"DocumentCellSegue"]){
        IIDocumentDetailViewController *destVC = [segue destinationViewController];
        
        NSIndexPath *indexPath = [[self tableView] indexPathForSelectedRow];
        IIDocument *document = _documentController.documents[indexPath.row];
        destVC.document = document;
    }
}

@end
