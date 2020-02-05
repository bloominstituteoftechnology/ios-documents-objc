//
//  DocumentsTableVC.m
//  Documents
//
//  Created by John Kouris on 2/4/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "DocumentsTableVC.h"
#import "DocumentController.h"
#import "JDKDocument.h"
#import "NSString+WordCount.h"
#import "DocumentDetailVC.h"

@interface DocumentsTableVC ()

@property (nonatomic, readonly) DocumentController *documentsController;

@end

@implementation DocumentsTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateViews];
    
    _documentsController = [[DocumentController alloc] init];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[self tableView] reloadData];
}

- (void)updateViews
{
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    self.title = @"Documents";
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.documentsController.documents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    JDKDocument *document = [self.documentsController.documents objectAtIndex:indexPath.row];
    
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%i words", document.wordCount];
    
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"AddDocumentSegue"]) {
//        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        DocumentDetailVC *detailVC = segue.destinationViewController;
        detailVC.documentsController = self.documentsController;
//        detailVC.document = [self.documentsController.documents objectAtIndex:indexPath.row];
    }
//    else if ([segue.identifier isEqualToString:@"ShowCreateTask"]) {
//        TaskDetailViewController *detailVC = segue.destinationViewController;
//        detailVC.tasksController = self.tasksController;
//    }
}

@end
