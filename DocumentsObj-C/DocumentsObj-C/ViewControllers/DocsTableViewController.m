//
//  DocsTableViewController.m
//  DocumentsObj-C
//
//  Created by Luqmaan Khan on 10/9/19.
//  Copyright © 2019 Luqmaan Khan. All rights reserved.
//

#import "DocsTableViewController.h"
#import "DocDetailViewController.h"
#import "Document.h"
#import "DocumentController.h"


@interface DocsTableViewController ()

@end

@implementation DocsTableViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

-(DocumentController *)controller {
    if (_controller) {
        return _controller;
    } else {
        _controller = [[DocumentController alloc] init];
        return _controller;
    }
}




#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.controller.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    Document *document = [self.controller documentAtIndex:indexPath.row];
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text =  [NSString stringWithFormat:@"%lu", (unsigned long)document.text.wordCount];
    
    return cell;
}
//AddDocument
//ShowDocument
 
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
}


@end
