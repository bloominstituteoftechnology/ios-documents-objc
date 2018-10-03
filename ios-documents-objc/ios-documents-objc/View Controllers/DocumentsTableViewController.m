//
//  DocumentsTableViewController.m
//  ios-documents-objc
//
//  Created by Conner on 10/3/18.
//  Copyright © 2018 Conner. All rights reserved.
//
#import "DocumentsTableViewController.h"
#import "DocumentDetailViewController.h"
#import "CGADocumentController.h"
#import "CGADocument.h"

@interface DocumentsTableViewController ()

@end

@implementation DocumentsTableViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[self tableView] reloadData];
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    if (self) {
        _documentController = [[CGADocumentController alloc] init];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _documentController = [[CGADocumentController alloc] init];
    }
    return self;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[self documentController] documents] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    NSMutableArray<CGADocument *> *documents = [[self documentController] documents];
    
    [[cell textLabel] setText:[[documents objectAtIndex:[indexPath row]] title]];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", documents[indexPath.row].documentWordCount];
    
    return cell;
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"AddDocumentSegue"]) {
        DocumentDetailViewController *vc = [segue destinationViewController];
        [vc setDocumentController:[self documentController]];
    } else if ([[segue identifier] isEqualToString:@"ViewDocumentSegue"]) {
        DocumentDetailViewController *vc = [segue destinationViewController];
        NSIndexPath *index = [[self tableView] indexPathForSelectedRow];
        CGADocument *document = [[[self documentController] documents] objectAtIndex:[index row]];
        
        [vc setDocumentController:[self documentController]];
        [vc setDocument:document];
    }
}


@end
