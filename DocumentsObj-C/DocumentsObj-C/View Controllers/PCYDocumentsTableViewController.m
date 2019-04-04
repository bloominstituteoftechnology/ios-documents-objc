//
//  PCYDocumentsTableViewController.m
//  DocumentsObj-C
//
//  Created by Paul Yi on 4/3/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import "PCYDocumentsTableViewController.h"
#import "PCYDocumentController.h"
#import "PCYDocument.h"
#import "PCYDocumentViewController.h"


@interface PCYDocumentsTableViewController ()

@end

@implementation PCYDocumentsTableViewController

- (instancetype)initWithNibName:(nullable NSString *)nibNameOrNil bundle:(nullable NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _documentController = [[PCYDocumentController alloc] init];
    }
    return self;
}

- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        _documentController = [[PCYDocumentController alloc] init];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    PCYDocument *document = [self.documentController.documents objectAtIndex:indexPath.row];
    
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = document.text;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        PCYDocument *document = [self.documentController.documents objectAtIndex:indexPath.row];
        [self.documentController deleteDocument:document];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }   
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    PCYDocumentViewController *documentDetailViewController = [segue destinationViewController];
    
    if ([documentDetailViewController isKindOfClass:[PCYDocumentViewController class]]) {
        documentDetailViewController.documentController = self.documentController;
        
        if ([segue.identifier isEqualToString:@"ShowDocumentDetail"]) {
            NSInteger index = self.tableView.indexPathForSelectedRow.row;
           documentDetailViewController.document = self.documentController.documents[index];
        }
    }
}


@end
