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
    
// Create an instance variable directly (not a property)
// ModelController *_modelController;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Initializing the modelController
    _modelController = [[ModelController alloc] init];
    
    [self setModelController: [[ModelController alloc] init]];

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
    
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = document.text;
    
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Add
    if ([segue.identifier isEqualToString:@"addDocumentSegue"]) {
        
        //
        ALWDetailViewController *detailViewController = [segue destinationViewController];
    }
    
    if ([segue.identifier isEqualToString:@"showDocumentSegue"]) {
        
    }
    
    // Pass the selected object to the new view controller.
}


@end
