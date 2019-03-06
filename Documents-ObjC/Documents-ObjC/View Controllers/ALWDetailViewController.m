//
//  ALWDetailViewController.m
//  

#import "ALWDetailViewController.h"

@interface ALWDetailViewController ()

@end

@implementation ALWDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set as textView's delegate
    _documentTextView.delegate = self;
}
    
- (void)textViewDidChange:(UITextView *)textView {
    //_numberOfWordsLabel.text = _document.bodyText.wordCount;
    [_numberOfWordsLabel setText:[NSString stringWithFormat:@"%d words", _document.bodyText.wordCount]];
    //[cell.detailTextLabel setText:[NSString stringWithFormat:@"%d words", document.wordCount]];
}
    
- (void)updateViews {
    self.navigationController.title = _document.title;
    [_titleTextField setText: _document.title];
    [_numberOfWordsLabel setText: [NSString stringWithFormat:@"%d words", _document.bodyText.wordCount]];
    [_documentTextView setText: _document.bodyText];
}
 
// Resign keyboard when background is tapped
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesBegan:withEvent:");
    [self.view endEditing: YES];
    [super touchesBegan:touches withEvent:event];
}


- (IBAction)save:(id)sender {
    
    //_modelController.createDoc;
    
}
    
    
    
    
@end
