//
//  DocumentsTableViewController.h
//  Documents
//
//  Created by Carolyn Lea on 10/3/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CLSDocumentController;
@class CLSDocument;

NS_ASSUME_NONNULL_BEGIN

@interface DocumentsTableViewController : UITableViewController

@property CLSDocumentController *documentController;
@property CLSDocument *document;

@end

NS_ASSUME_NONNULL_END
