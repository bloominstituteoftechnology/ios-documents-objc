//
//  DocumentsTableViewController.m
//  Documents
//
//  Created by Daniela Parra on 11/14/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import "DocumentsTableViewController.h"
#import "DYPDocumentController.h"
#import "DYPDocument.h"
#import "DocumentDetailViewController.h"

@interface DocumentsTableViewController ()

@property (nonatomic) DYPDocumentController *documentController;

@end

@implementation DocumentsTableViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _documentController = [[DYPDocumentController alloc] init];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _documentController = [[DYPDocumentController alloc] init];
    }
    return self;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    DYPDocument *document = [self.documentController.documents objectAtIndex:[indexPath row]];
    
    [cell.textLabel setText:document.title];
    NSString *wordCountString = [NSString stringWithFormat:@"%d", document.wordCount];
    [cell.textLabel setText:wordCountString];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        DYPDocument *document = [self.documentController.documents objectAtIndex:[indexPath row]];
        [self.documentController deleteDocument:document];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}



#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"ViewDocument"]) {
        DocumentDetailViewController *destinationVC = (DocumentDetailViewController *)[segue destinationViewController];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DYPDocument *document = [self.documentController.documents objectAtIndex:[indexPath row]];
        [destinationVC setDocument:document];
        [destinationVC setDocumentController:self.documentController];
    } else if ([segue.identifier isEqualToString:@"AddDocument"]) {
        DocumentDetailViewController *destinationVC = (DocumentDetailViewController *)[segue destinationViewController];
    
        [destinationVC setDocumentController:self.documentController];
    }
}

@end
