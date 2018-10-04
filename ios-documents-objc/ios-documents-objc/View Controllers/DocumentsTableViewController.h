//
//  DocumentsTableViewController.h
//  ios-documents-objc
//
//  Created by Conner on 10/3/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CGADocumentController;

NS_ASSUME_NONNULL_BEGIN

@interface DocumentsTableViewController : UITableViewController

@property CGADocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
