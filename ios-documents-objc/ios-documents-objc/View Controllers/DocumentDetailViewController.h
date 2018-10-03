//
//  DocumentDetailViewController.h
//  ios-documents-objc
//
//  Created by Conner on 10/3/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CGADocumentController.h"
#import "CGADocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface DocumentDetailViewController : UIViewController <UITextViewDelegate>

@property CGADocumentController *documentController;
@property CGADocument *document;

@end

NS_ASSUME_NONNULL_END
