//
//  JBDocsTableViewController.m
//  Documents
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBDocsTableViewController.h"
#import "JBDocDetailViewController.h"
#import "JBDocumentController.h"
#import "JBDocument.h"


@interface JBDocsTableViewController ()

@property (weak, nonatomic) IBOutlet UIBarButtonItem *editButton;

- (void) updateViews;
- (IBAction)editButtonTapped:(UIBarButtonItem *)sender;

@end


@implementation JBDocsTableViewController

#pragma mark - Init / View Lifecycle

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        _documentController = [[JBDocumentController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    [self updateViews];
}

- (void)updateViews {
    [self.tableView reloadData];
}

- (IBAction)editButtonTapped:(UIBarButtonItem *)sender
{
    [self.tableView setEditing:!(self.tableView.isEditing) animated:YES];
    [self.editButton setTitle:(self.tableView.isEditing ? @"Save order" : @"Edit")];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell"
                                                            forIndexPath:indexPath];
    JBDocument *doc = self.documentController.documents[indexPath.row];
    cell.textLabel.text = doc.title;
    cell.detailTextLabel.text = doc.formattedWordCount;

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
        [self.documentController deleteDocumentAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}

- (void)tableView:(UITableView *)tableView
moveRowAtIndexPath:(NSIndexPath *)fromIndexPath
      toIndexPath:(NSIndexPath *)toIndexPath
{
    [self.documentController moveDocumentAtIndex:fromIndexPath.row to:toIndexPath.row];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    JBDocDetailViewController *detailVC;
    // compiler yelled at me until I put two sets of parentheses...
    if ((detailVC = (JBDocDetailViewController *)segue.destinationViewController)) {
        detailVC.documentController = self.documentController;
        if ([segue.identifier isEqual:@"EditDocumentSegue"]) {
            detailVC.document = self.documentController.documents[[self.tableView indexPathForSelectedRow].row];
        }
    }
}

@end
