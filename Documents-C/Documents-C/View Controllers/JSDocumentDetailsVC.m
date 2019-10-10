//
//  JSDocumentDetailsVC.m
//  Documents-C
//
//  Created by Jeffrey Santana on 10/9/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import "JSDocumentDetailsVC.h"
#import <CoreData/CoreData.h>
#import "Documents_C+CoreDataModel.h"
#import "AppDelegate.h"

@interface JSDocumentDetailsVC ()

@property (weak, nonatomic) IBOutlet UILabel *wordCountLbl;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@property NSString *textViewPlaceholder;

- (IBAction)saveBtnTapped:(id)sender;

- (void)setupDocument;

@end

@implementation JSDocumentDetailsVC

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.textViewPlaceholder = @"Document text:";
	[self setupTextView];
	[self setupDocument];
}


- (IBAction)saveBtnTapped:(id)sender {
	NSManagedObjectContext *context = [self managedObjectContext];
    
    // Create a new managed object
    NSManagedObject *newDoc = [NSEntityDescription insertNewObjectForEntityForName:@"Document" inManagedObjectContext:context];
	NSString *bodyText = self.bodyTextView.text;
	NSUInteger wordCount = [bodyText componentsSeparatedByString:@" "].count;
	
    [newDoc setValue:self.titleTextField.text forKey:@"title"];
    [newDoc setValue:bodyText forKey:@"body"];
	[newDoc setValue:[NSString stringWithFormat:@"%lu", (unsigned long)wordCount] forKey:@"wordCount"];
    
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    
    [self.navigationController popViewControllerAnimated:true];
}

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
	if( [delegate performSelector:@selector(persistentContainer)] ){
		context = [[delegate persistentContainer] viewContext];
	}
    return context;
}

- (void)setupDocument {
	if (self.document) {
		self.titleTextField.text = self.document.title;
		self.bodyTextView.text = self.document.body;
		self.wordCountLbl.text = [NSString stringWithFormat:@"%@ words", self.document.wordCount];
		
		self.bodyTextView.textColor = [UIColor blackColor];
		[self.navigationItem.rightBarButtonItem setEnabled:false];
	}
}

- (void)textViewDidChange:(UITextView *)textView {
	NSUInteger wordCount = [textView.text componentsSeparatedByString:@" "].count;
	self.wordCountLbl.text = [NSString stringWithFormat:@"%lu words", (unsigned long)wordCount];
}

- (void)setupTextView {
	self.bodyTextView.delegate = self;
	self.bodyTextView.text = self.textViewPlaceholder;
	self.bodyTextView.textColor = [UIColor lightGrayColor];
}

- (void)textViewDidBeginEditing:(UITextView *)textView {
	if (textView.textColor == [UIColor lightGrayColor]) {
		textView.text = nil;
		textView.textColor = [UIColor blackColor];
	}
}

- (void)textViewDidEndEditing:(UITextView *)textView {
	if ([textView.text isEqualToString:@""]) {
		textView.text = self.textViewPlaceholder;
		textView.textColor = [UIColor lightGrayColor];
	}
}

@end
