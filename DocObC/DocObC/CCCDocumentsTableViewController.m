//
//  DocumentsTableViewController.m
//  DocObC
//
//  Created by Ryan Murphy on 7/17/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

#import "CCCDocumentsTableViewController.h"
#import "CCCNewDocViewController.h"

@interface CCCDocumentsTableViewController ()

@end

@implementation CCCDocumentsTableViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _documentsController = [[CCCDocumentsController alloc] init];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _documentsController = [[CCCDocumentsController alloc] init];
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocCell" forIndexPath:indexPath];
    CCCDocument *document = [[self documentsController] documents][indexPath.row];
    
    NSString *wordString = [document wordCount] == 1 ? @"word" : @"words";
    
    cell.textLabel.text = [document title];
    cell.detailTextLabel.text = [[NSString alloc] initWithFormat:@"%i %@", [document wordCount], wordString];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        CCCDocument *document = [[self documentsController] documents][indexPath.row];
        [[self documentsController] removeDocument:document];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ( [[segue identifier] isEqualToString:@"ShowDoc"] ) {
        CCCNewDocViewController *showViewController = [segue destinationViewController];
        NSIndexPath *index = [[self tableView] indexPathForSelectedRow];
        showViewController.documentController = [self documentsController];
        showViewController.document = [[self documentsController] documents][index.row];
    }
    
    if ( [[segue identifier] isEqualToString:@"AddDoc"] ) {
        CCCNewDocViewController *addViewController = [segue destinationViewController];
        addViewController.documentController = [self documentsController];
    }
}

@end
