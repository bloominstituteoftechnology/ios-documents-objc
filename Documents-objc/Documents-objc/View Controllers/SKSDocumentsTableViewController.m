//
//  SKSDocumentsTableViewController.m
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSDocumentsTableViewController.h"
#import "SKSDocumentController.h"
#import "SKSDocument.h"
#import "SKSDetailDocumentViewController.h"

@interface SKSDocumentsTableViewController ()

@end

@implementation SKSDocumentsTableViewController

static NSString * const reuseIdentifier = @"DocumentCell";

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _documentController = [[SKSDocumentController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];

    SKSDocument *document = self.documentController.documents[indexPath.row];

    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d words", document.wordCount];
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        SKSDocument *document = self.documentController.documents[indexPath.row];
        [self.documentController deleteDocument:document];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    SKSDetailDocumentViewController *destinationVC = [segue destinationViewController];
    if ([destinationVC isKindOfClass:[SKSDetailDocumentViewController class]]) {

        destinationVC.documentController = self.documentController;

        if ([[segue identifier] isEqualToString:@"ShowDetailDocumentSegue"]) {
            NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
            destinationVC.document = self.documentController.documents[indexPath.row];
        }
    }
}

@end
