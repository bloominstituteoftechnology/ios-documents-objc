//
//  MUDocumentsTableViewController.m
//  Documents
//
//  Created by Moin Uddin on 11/14/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

#import "MUDocumentsTableViewController.h"
#import "MUDocumentController.h"
#import "MUDocument.h"
#import "MUDocumentDetailViewController.h"
#import "NSString+WordCount.h"
@interface MUDocumentsTableViewController ()

@property MUDocumentController *documentController;

@end

@implementation MUDocumentsTableViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _documentController = [[MUDocumentController alloc] init];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _documentController = [[MUDocumentController alloc] init];
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    MUDocument *document = [self.documentController.documents objectAtIndex:indexPath.row];
    
    [[cell textLabel] setText: document.title];
    [[cell detailTextLabel] setText: [NSString stringWithFormat:@"%d", [document.body wordCount]]];
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        MUDocument *document = [self.documentController.documents objectAtIndex:indexPath.row];
        [self.documentController deleteDocumentWIthDocument:document];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }  
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"NewDocument"]) {
        MUDocumentDetailViewController *vc = [segue destinationViewController];
        [vc setDocumentController: self.documentController];
    } else if ([segue.identifier isEqualToString:@"ViewDocument"]) {
        MUDocumentDetailViewController *vc = [segue destinationViewController];
        [vc setDocumentController: self.documentController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        MUDocument *document = [self.documentController.documents objectAtIndex:indexPath.row];
        [vc setDocument:document];
    }
}


@end
