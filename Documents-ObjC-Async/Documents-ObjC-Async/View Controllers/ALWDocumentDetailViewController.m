//
//  DetailViewController.m
//  

#import "ALWDocumentDetailViewController.h"
#import "ALWDocumentController.h"
#import "NSString+WordCount.h"
#import "ALWDocument.h"

@interface ALWDocumentDetailViewController ()

@end

@implementation ALWDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.documentTextView setDelegate: self];
    [self updateViews];
}

- (void)textViewDidChange:(UITextView *)textView {
    
    NSString *wordCountText = [self.documentTextView text];
    NSInteger newWordCount = [wordCountText wordCount];
    [_numberOfWordsLabel setText: [NSString stringWithFormat:@"%ld words", newWordCount]];
}

- (void)updateViews {
    if (!self.isViewLoaded || !self.document) { return; }
    
    self.title = self.document.documentTitle ?: @"Create Document";
    
    //self.numberOfWordsLabel.text = [NSString stringWithFormat:@"%ld words", _document.documentText.wordCount];
    //self.numberOfWordsLabel.text = [NSString stringWithFormat:@"%ld words", self.document.documentText.wordCount];
    self.titleTextField.text = self.document.documentTitle;
    self.documentTextView.text = self.document.documentText;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesBegan:withEvent:");
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (IBAction)save:(id)sender {
    
    // Are we editing a document? or creating a new one?
    BOOL isEditingDocument = self.document != nil;
    
    // The doc we're working with is either self.document if editing OR nil, so we create a new one
    ALWDocument *newDocument = self.document ?: [[ALWDocument alloc] init];
    newDocument.wordCount = self.document.wordCount;
    newDocument.documentTitle = self.titleTextField.text;
    newDocument.documentText = self.documentTextView.text;
    
    if (!isEditingDocument) {
        [self.documentController addDocument:newDocument];
        
        NSLog(@"%@", newDocument);
        NSLog(@"%@", _documentController.documents);
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}




@end
