//
//  ViewController.h
//  DMODocuments-Obj-C
//
//  Created by morse on 1/22/20.
//  Copyright © 2020 morse. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DMODocument;
@class DMODocumentController;

@interface DocumentDetailViewController : UIViewController <UITextViewDelegate>

@property DMODocumentController *documentController;
@property DMODocument *document;

@end

