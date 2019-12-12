//
//  GIPTableViewController.m
//  Documents-Objc
//
//  Created by Gi Pyo Kim on 12/11/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPTableViewController.h"
#import "GIPDocument.h"
#import "GIPDocumentController.h"
#import "GIPNewDocumentViewController.h"

@interface GIPTableViewController ()

- (IBAction)AddButtonPressed:(id)sender;

@property GIPDocumentController *controller;

@end

@implementation GIPTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _controller = [[GIPDocumentController alloc] init];
    
    [self.tableView reloadData];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.controller.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [[self.controller.documents objectAtIndex:indexPath.row] title];
    int wordCount = [[self.controller.documents objectAtIndex:indexPath.row] wordCount];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d words", wordCount];
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.controller removeDocument:[self.controller.documents objectAtIndex:indexPath.row]];
        [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationLeft];
    }
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier  isEqual: @"AddNewDocumentSegue"]) {
        GIPNewDocumentViewController *newDocVC = [segue destinationViewController];
        newDocVC.controller = self.controller;
    }
}


- (IBAction)AddButtonPressed:(id)sender {
    [self performSegueWithIdentifier:@"AddNewDocumentSegue" sender:self];
}
@end
