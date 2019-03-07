//
//  DocumentsTableViewController.m
//  

#import "ALWDocumentsTableViewController.h"
#import "ALWDocumentDetailViewController.h"
#import "ALWDocumentController.h"
#import "ALWDocument.h"

@interface ALWDocumentsTableViewController ()

// Instance of model controller
@property (nonatomic, readonly) ALWDocumentController *documentController; // = ALWDocumentController() in SWIFT

@end

@implementation ALWDocumentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self != nil) {
        _documentController = [[ALWDocumentController alloc] init];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self != nil) {
        _documentController = [[ALWDocumentController alloc] init];
    }
    return self;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.documentController.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    // Get the document to be displayed
    ALWDocument *document = self.documentController.documents[indexPath.row];
    
    // Configure the cell...
    cell.textLabel.text = document.documentTitle;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%ld words", document.wordCount];
    
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Editing
    if ([segue.identifier isEqualToString:@"showDocumentSegue"]) {
        
        // Get the new view controller using [segue destinationViewController].
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ALWDocumentDetailViewController *detailVC = segue.destinationViewController;
        
        // Pass the selected object to the new view controller.
        detailVC.documentController = self.documentController;
        detailVC.document = self.documentController.documents[indexPath.row];
        
    }
    // Creating
    if ([segue.identifier isEqualToString:@"addDocumentSegue"]) {
        ALWDocumentDetailViewController *detailVC = segue.destinationViewController;
        detailVC.documentController = self.documentController;
        
        
    }
}


@end
