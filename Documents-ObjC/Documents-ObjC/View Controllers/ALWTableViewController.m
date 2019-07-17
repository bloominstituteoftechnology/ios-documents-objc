//
//  ALWTableViewController.m
//

#import "ALWTableViewController.h"
#import "ModelController.h"
#import "ALWDocument.h"
#import "ALWDetailViewController.h"

@interface ALWTableViewController ()
  
// this could also go here - private
// @property ModelController *modelController;
    
@end

@implementation ALWTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Initializing the modelController
    _modelController = [[ModelController alloc] init];
    
    [self setModelController: [[ModelController alloc] init]];

}
    
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [ self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[self.modelController documents] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // let document = documents[indexPath.row]
    ALWDocument *document = [_modelController.documents objectAtIndex:indexPath.row];
    
    [cell.textLabel setText: document.title];
    [cell.detailTextLabel setText:[NSString stringWithFormat:@"%d words", document.wordCount]];
    //cell.detailTextLabel.text = document.bodyText;
    
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Add
    if ([segue.identifier isEqualToString:@"addDocumentSegue"]) {
        
        // Set destination as detail view controller
        ALWDetailViewController *detailViewController = [segue destinationViewController];
        [detailViewController setModelController: _modelController];
    }
    
    // Show
    if ([segue.identifier isEqualToString:@"showDocumentSegue"]) {
        
        // Set destination as detail view controller
        ALWDetailViewController *detailViewController = [segue destinationViewController];
        
        // Pass information
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        ALWDocument *document = self.modelController.documents[indexPath.row];
        
        [detailViewController setModelController: _modelController];
        [detailViewController setDocument: document];
    }
    
    // Pass the selected object to the new view controller.
}


@end
