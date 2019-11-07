//
//  JLCDocumentsTableViewController.m
//  iOS-Documents-objc
//
//  Created by Jake Connerly on 11/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import "JLCDocumentsTableViewController.h"
#import "JLCAddDocumentViewController.h"
#import "JLCDocumentController.h"
#import "JLCDocument.h"

@interface JLCDocumentsTableViewController ()

@property (nonatomic) JLCDocumentController *documentController;

@end

@implementation JLCDocumentsTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _documentController = [[JLCDocumentController alloc] init];
    }
    return self;
}

// MARK: - View LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
}

// MARK: - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    JLCDocument *document = self.documentController.documents[indexPath.row];
    
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d words", document.numberOfWords];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        JLCDocument *document = self.documentController.documents[indexPath.row];
        [self.documentController deleteDocument:document];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

// MARK: - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier]  isEqual: @"AddDocumentSegue"]) {
        JLCAddDocumentViewController *destinationVC = segue.destinationViewController;
        destinationVC.documentController = self.documentController;
    }
}


@end
