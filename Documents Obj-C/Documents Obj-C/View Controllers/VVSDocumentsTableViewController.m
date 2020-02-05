//
//  VVSDocumentsTableViewController.m
//  Documents Obj-C
//
//  Created by Vici Shaweddy on 2/4/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VVSDocumentsTableViewController.h"
#import "VVSDocumentController.h"
#import "VVSDocument.h"
#import "VVSDetailViewController.h"
#import "NSString+VVSWordCount.h"

@interface VVSDocumentsTableViewController ()

@property (nonatomic, readonly) VVSDocumentController *documentController;

@end

@implementation VVSDocumentsTableViewController

// this is when storyboard is used or use awakeFromNib
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _documentController = [[VVSDocumentController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.documentController.documents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    VVSDocument *document = [self.documentController.documents objectAtIndex:indexPath.row];
    
    // converting the NSUInteger to NSString
    NSString *stringWordCount = [NSString stringWithFormat:@"%li", document.wordCount];
    
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = stringWordCount;
    
    return cell;
}

#pragma mark - Navigation

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"DetailSegue" sender:indexPath];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"AddSegue"])
    {
        VVSDetailViewController *detailVC = [segue destinationViewController];
        
        detailVC.documentController = self.documentController;
        
    } else if ([[segue identifier] isEqualToString:@"DetailSegue"])
    {
        VVSDetailViewController *detailVC = [segue destinationViewController];
        NSIndexPath *indexPath = (NSIndexPath *)sender;
        
        detailVC.documentController = self.documentController;
        detailVC.document = [self.documentController.documents objectAtIndex:indexPath.row];
    }
}

@end
