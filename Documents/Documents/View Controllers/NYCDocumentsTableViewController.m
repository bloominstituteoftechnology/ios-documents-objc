//
//  NYCDocumentsTableViewController.m
//  Documents
//
//  Created by Nathanael Youngren on 4/3/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCDocumentsTableViewController.h"
#import "NYCNewDocumentViewController.h"

@interface NYCDocumentsTableViewController ()

@end

@implementation NYCDocumentsTableViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _documentsController = [[NYCDocumentsController alloc] init];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _documentsController = [[NYCDocumentsController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [[self tableView] reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[self documentsController] documents] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    NYCDocument *document = [[self documentsController] documents][indexPath.row];
    
    NSString *wordString = [document wordCount] == 1 ? @"word" : @"words";
    
    cell.textLabel.text = [document title];
    cell.detailTextLabel.text = [[NSString alloc] initWithFormat:@"%i %@", [document wordCount], wordString];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NYCDocument *document = [[self documentsController] documents][indexPath.row];
        [[self documentsController] removeDocument:document];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ( [[segue identifier] isEqualToString:@"Edit"] ) {
      NYCNewDocumentViewController *editVC = [segue destinationViewController];
      NSIndexPath *index = [[self tableView] indexPathForSelectedRow];
      editVC.documentController = [self documentsController];
      editVC.document = [[self documentsController] documents][index.row];
    }
    
    if ( [[segue identifier] isEqualToString:@"Add"] ) {
        NYCNewDocumentViewController *editVC = [segue destinationViewController];
        editVC.documentController = [self documentsController];
    }
}

@end
